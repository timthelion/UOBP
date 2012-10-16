/*
 * BRLTTY - A background process providing access to the console screen (when in
 *          text mode) for a blind person using a refreshable braille display.
 *
 * Copyright (C) 2012 by Timothy Hobbs and
 * Copyright (C) 1995-2011 by The BRLTTY Developers.
 *
 * BRLTTY and the FCHAD software comes with ABSOLUTELY NO WARRANTY.
 *
 * This is free software, placed under the terms of the
 * GNU General Public License, as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any
 * later version. Please see the file LICENSE-GPL for details.
 *
 * Web Page: http://mielke.cc/brltty/ and  http://brmlab.cz/user/timthelion
 *
 * This software is maintained by Timothy Hobbs <timothyhobbs@seznam.cz>.
 */

#include "uobp_braille.h"

unsigned char initializationStatus = BUFFER_UNINITIALIZED;
static unsigned char *previousCells = NULL; /* previous pattern displayed */
unsigned char leftHanded=0;

///////////////////////////////////////////////////////
///Event Handlers//////////////////////////////////////
///////////////////////////////////////////////////////
void callHandler(void (*handler[])(),void * info){
 int i=0;
 while(handler[i]
         &&
       i<MAX_NUM_HANDLERS)
    (handler[i++])(info);
}

unsigned char addHandler(void (*handler[])(),
                         void (*addition)()){
 int i = 0;
 while(handler[i]&&i<MAX_NUM_HANDLERS)i++;
 if(i<MAX_NUM_HANDLERS){
  handler[i]=addition;
  return ADD_HANDLER_SUCCESS;
 }
 else return ADD_HANDLER_FAIL_MAX_NUM_HANDLERS_OVERFLOW;
}
///////////////////////////////////////////////////////
///Specific Event Handlers/////////////////////////////
///////////////////////////////////////////////////////
void (*onCellsChanged[MAX_NUM_HANDLERS])();

void initializeSpecificEventHandlers(){
  int i;
  for(i=0;i<MAX_NUM_HANDLERS;i++)
    onCellsChanged[i]=NULL;
}

///////////////////////////////////////////////////////
///Frame Handlers//////////////////////////////////////
///////////////////////////////////////////////////////
void (*frameHandlers
      [NUM_FRAME_TYPES]
      [MAX_NUM_FRAME_SUBTYPES]
      [MAX_NUM_HANDLERS])();

void * getFrameHandler (unsigned char frameType,
                   unsigned char frameSubType){
 if(frameType >= NUM_FRAME_TYPES)return NULL;
 if(frameSubType >= MAX_NUM_FRAME_SUBTYPES) return NULL;
 return frameHandlers
         [frameType]
         [frameSubType]
         [0];
}

void initializeFrameHandlers(){
 int i, j, k;
 for(i=0;i<NUM_FRAME_TYPES;i++)
  for(j=0;j<MAX_NUM_FRAME_SUBTYPES;j++)
    for(k=0;k<MAX_NUM_HANDLERS;k++)
     frameHandlers[i][j][k]=NULL;
 //All frames subtypes which are NULL or otherwise undefined are ignored.
 addHandler(frameHandlers[0][1],(void *)&initializeCapabilityNodes);
 addHandler(frameHandlers[2][3],(void *)&reactToSensorDown);
 addHandler(frameHandlers[2][4],(void *)&reactToSensorUp);
 #ifdef LOG_EVERYTHING
/* This is for research purposes, to log how users use the device.*/
 addHandler(frameHandlers[2][3],(void *)&logSensorDown);
 addHandler(frameHandlers[2][4],(void *)&logSensorUp);
 #endif
}

void handleFrame(
 uint16_t length
 ,unsigned char type
 ,unsigned char subType
 ,unsigned char * information
 ,void * brl){
 void * handler = getFrameHandler(type,subType);
 //printf("Frame recieved of type %d, subtype %d\n",type,subType);
 FrameInfo infoForHandler =
  {.brl  = brl,
   .info = information};
 callHandler(handler,&infoForHandler);
 free(information);
}

/*/////////////////////////////////////////////////////
///Capabilities////////////////////////////////////////
///////////////////////////////////////////////////////
  When a frame type 0 subType 1 is sent from the device the braille driver extracts from this frame a list of capability nodes provided by the device.  This allows the driver to then intialize it's own internal state pertaining to each node. When a capability node is initialized the capability initializer is run and the pointer to the new state is stored in the capabilityStates array along with settings information regarding that capability.  These states are freed once another frame type 0 subType1 is received, as some nodes may have dissapeared.
 
 The intializers and freeers for the states are held in the capability struct which contains.

 Capability name.

 The initializer for the capability of type:

 void * initializer(unsigned char * information);

 The information parameter being the information buffer from the 0_1 frame(the part which follows the SETTINGS).  This is a non null terminated buffer.  You should know the length.

 This returns a new state object that holds information about a given concrete capability node(For example, how many cells a given braille display has).

 The free'er, of type:

 void freeer(void * state);

 If the freeer is NULL, then the free function is used.

 And the settings which can be set for that capability.
 */

Capability * capabilities[NUM_CAPABILITIES];

void initializeCapabilityInitializersArray(){
  #ifdef LOG_EVERYTHING
  logMessage(LOG_INFO,"Initialization packet recieved from device.");
  #endif
  int i;
  for(i=0;i<NUM_CAPABILITIES;i++)
   capabilities[i]=NULL;

  capabilities[3]=(Capability *)malloc(sizeof(Capability));
  capabilities[3]->name        = "FCHAD_CELL";
  capabilities[3]->initializer = &initFCHADCellState;
  capabilities[3]->numSettings = 1;
  capabilities[3]->settings[0] = "PUNCH_FORCE";

  capabilities[4]=(Capability *)malloc(sizeof(Capability));
  capabilities[4]->name        = "FCHAD_SENSORS";
  capabilities[4]->initializer = &initFCHADSensorsState;
  capabilities[4]->freeer      = (void *)&freeFCHADSensorsState;
  capabilities[4]->numSettings = 1;
  capabilities[4]->settings[0] = "THREASHHOLD";
}

struct capabilityState * capabilityStates
 [NUM_CAPABILITIES]
 [MAX_NUM_NODES];

/* Initialize the nodes based on the information passed(via frame type 0_1) by the braille device.*/
void initializeCapabilityNodes(uint16_t length, FrameInfo * frameInfo){
  unsigned char * information = frameInfo->info;
  BrailleDisplay * brl = frameInfo->brl;
  int i,j;
  for(i=0;i<NUM_CAPABILITIES;i++)
    for(j=0;j<MAX_NUM_NODES;j++){
      if(capabilityStates[i][j]){
        if(capabilities[i]->freeer)
          (capabilities[i]->freeer)(capabilityStates[i][j]->state);//If there is a custom free function use it.
        else
         free(capabilityStates[i][j]->state);
        free(capabilityStates[i][j]);
      }	
    } 

  i=16;//Jump past the device UUID, we don't need it.
  unsigned char numberOfStandardNodes = information[i++] << 8;
  numberOfStandardNodes += information[i++];
  int capabilityNode=0;
  while(capabilityNode++<numberOfStandardNodes){
   //First two octets are the capabilityID:
   uint16_t capabilityID =
     (uint16_t)information[i++] << 8;
   capabilityID +=
     (uint16_t)information[i++];

   //Third octet is the node:
   unsigned char node = information[i++];

   //Forth and fifth octets are the length of the information buffer that is associated with this capability node.
   unsigned char capabilityNodeInfoLength =
     (uint16_t)information[i++]<<8;
   capabilityNodeInfoLength +=
     (uint16_t) information[i++];

   //Now we load the settings for the capability node.
   unsigned char setting=0;
   struct capabilityState* thisState =
     (struct capabilityState*)
      malloc(sizeof(struct capabilityState));
   thisState->settings=malloc(capabilities[capabilityID]->numSettings*sizeof(uint16_t));
   capabilityStates[capabilityID][node]=thisState;

   while(setting<capabilities[capabilityID]->numSettings){
     capabilityStates [capabilityID][node]->settings[setting]
                      =
       (uint16_t)information[i++]<<8;
     capabilityStates [capabilityID][node]->settings[setting++]
                     +=
       (uint16_t)information[i++];
   }
   //Now we initialize the state.
   if(capabilityID<NUM_CAPABILITIES
                  &&
      node<MAX_NUM_NODES
                  &&
      capabilities[capabilityID])
     capabilityStates[capabilityID][node]->state
         =
       (capabilities[capabilityID]->initializer)(&information[i],brl);
   i+=capabilityNodeInfoLength;
  }
  //Extended capabilities are not yet supported, end of buffer is safely ignored.
}
///////////////////////////////////////////////////////
///FCHAD Cells/////////////////////////////////////////
///////////////////////////////////////////////////////
void * initFCHADCellState(unsigned char * information,BrailleDisplay * brl){
  FCHADCellState * thisState =
    (FCHADCellState *)
     malloc(sizeof(FCHADCellState));
  thisState->numDots = information[0];
  return thisState;
}

///////////////////////////////////////////////////////
///FCHAD Sensors///////////////////////////////////////
///////////////////////////////////////////////////////
void * initFCHADSensorsState(unsigned char * information,BrailleDisplay * brl){
  //printf("Initialization frame recieved.");
  FCHADSensorsState * thisState =
    (FCHADSensorsState *)
     malloc(sizeof(FCHADSensorsState));
  thisState->rows =
    (uint16_t)information[0]<<8;
  thisState->rows +=
    (uint16_t)information[1];
  thisState->cols =
    (uint16_t)information[2]<<8;
  thisState->cols +=
    (uint16_t)information[3];
  thisState->sensors =
    malloc(thisState->rows*thisState->cols);
  /* Despite the fact that the UOBP standard supports multiple nodes of a single capability, BRLTTY doesn't really support having multiple braille buffers.  It is not meaningfull to add such support at this time. The case in which a device would have multiple nodes(say we could plug in a larger 2D sensor grid) is far away in the future.  We'd probably end up just using the largest node as the "primary" node and letting the nodes with smaller number of sensors be subsets of the "primary".  Not implemented yet.*/
  brl->textRows    =thisState->rows;
  brl->textColumns =thisState->cols;
  brl->resizeRequired  =1;
  if(previousCells)free(previousCells);
  previousCells=malloc(thisState->rows*thisState->cols);
  thisState->prevRow=0;
  thisState->prevCol=0;
  return thisState;
}

void freeFCHADSensorsState(FCHADSensorsState * thisSensorState){
  free(thisSensorState->sensors);
  free(thisSensorState);
}

void reactToSensorUp(uint16_t length,
                     FrameInfo * frameInfo){
  reactToSensorAction(length,frameInfo,SENSOR_UP);
}

void reactToSensorDown(uint16_t length,
                     FrameInfo * frameInfo){
  reactToSensorAction(length,frameInfo,SENSOR_DOWN);
}

void reactToSensorAction(uint16_t length,
                         FrameInfo * frameInfo,
                         unsigned char action){
  unsigned char * information = frameInfo->info;
  unsigned char node = information[0];
  FCHADSensorsState * myState =
    (FCHADSensorsState*)capabilityStates[4][node];
  uint16_t row =
    (uint16_t)information[1]<<8;
  row +=
    (uint16_t)information[2];
  uint16_t col =
    (uint16_t)information[3]<<8;
  col +=
    (uint16_t)information[4];
  /*If the touch was inside the buffer(It will be outside only in the case of a coruption somewhere.*/
  if(row < myState->rows
           &&
     col < myState->cols){
   myState->sensors[row][col]=action;
   updateFCHADFromSensorValues(myState,node);
  }
}

void updateFCHADFromSensorValues
 (FCHADSensorsState * myState,
 unsigned char node){
  /* We want to always display the character marked by the top left corner
  (or top right in the case of a left handed user)
  of the area that is currently being touched.
  So first we figure out what the top left corner being touched is,
  and if it is different than the previous top left corner,
  we send a new signal to the device
  to tell it to display that new character.
  If nothing is being touched,
  than we send a signal telling the device to switch it's FCHAD Cell off.*/
 if(initializationStatus==BUFFER_INITIALIZED){
  uint16_t i,j;
  unsigned char found=0;
  j=0;//Due to a warning...
  if(!leftHanded){
   for(i=0;i<myState->rows&&!found;i++)
    for(j=0;j<myState->cols&&!found;j++)
      if(myState->sensors[i][j])found=1;
   j--;i--;
  }else{
   for(i=0;i<myState->rows&&!found;i++)
    for(j=myState->cols;j>-1&&!found;j--)
      if(myState->sensors[i][j])found=1;
   j++;i--;
  }
  unsigned char charToDisplay=0;
  if(found){
    charToDisplay=previousCells[i*j];//This is currently a bug that will cause buffer over-run if some smaller node was initialized after this one.
  }
  unsigned char fchadCellNode = 0;
  unsigned char information[3];
  while(capabilityStates[3][fchadCellNode]){
    /*Broadcast to all FCHAD Cell nodes, for want of a more reasonable default behavior.
      The standard doesn't specify the pairing of nodes(perhaps it should?).  But one possible implementation would be to allow the user to pair one sensor node with one fchad cell node, so that different sensors would display to different nodes.
           */
   information[0]=fchadCellNode++;
   information[1]=charToDisplay;
   information[2]=0;//Braille characters are only 8 bits, but some FCHAD Cells may have up to 16(so as to allow dpad like directional symbols.)  We can safely ignore these potential extra dots.
   sendFrame(3,1,1,information,gioEndpoint);
  }
  #ifdef LOG_EVERYTHING
  logMessage(LOG_INFO,"#EVENT_LOG# displaying char:%c\n",
         charToDisplay);
  #endif
 }
}

///////////////////////////////////////////////////////
///Sensor logging//////////////////////////////////////
///////////////////////////////////////////////////////
#ifdef LOG_EVERYTHING
void logSensorDown(uint16_t length,
                   FrameInfo * frameInfo){
  logSensorAction(length,frameInfo,SENSOR_DOWN);
}

void logSensorUp(uint16_t length,
                 FrameInfo * frameInfo){
  logSensorAction(length,frameInfo,SENSOR_UP);
}

void logSensorAction(uint16_t length,
                     FrameInfo * frameInfo,
                     unsigned char action){
  unsigned char * information = frameInfo->info;
  uint16_t row =
    (uint16_t)information[1]<<8;
  row +=
    (uint16_t)information[2];
  uint16_t col =
    (uint16_t)information[3]<<8;
  col +=
    (uint16_t)information[4];
  //TODO log time as well!
  logMessage(LOG_INFO,"#EVENT_LOG# Sensor at row:%d col:%d ",row,col);
  if(action==SENSOR_DOWN)
   logMessage(LOG_INFO,"DOWN\n");
  if(action==SENSOR_UP)
   logMessage(LOG_INFO,"UP\n");
}
#endif
///////////////////////////////////////////////////////
///DEBUGGING///////////////////////////////////////////
///////////////////////////////////////////////////////


static void printByte(unsigned char byte)
{
    logMessage(LOG_INFO,"CHAR:%c\n",byte);
    logMessage(LOG_INFO,"DEC:%d\n",byte);
    if(byte & (1)) logMessage(LOG_INFO,"1" ); else logMessage (LOG_INFO,"0" );
    if(byte & (1<<3)) logMessage(LOG_INFO,"1\n"); else logMessage (LOG_INFO,"0\n");

    if(byte & (1<<1)) logMessage(LOG_INFO,"1" ); else logMessage (LOG_INFO,"0" );
    if(byte & (1<<4)) logMessage(LOG_INFO,"1\n"); else logMessage (LOG_INFO,"0\n");

    if(byte & (1<<2)) logMessage(LOG_INFO,"1" ); else logMessage (LOG_INFO,"0" );
    if(byte & (1<<5)) logMessage(LOG_INFO,"1\n"); else logMessage (LOG_INFO,"0\n");

    if(byte & (1<<6)) logMessage(LOG_INFO,"1" ); else logMessage (LOG_INFO,"0" );
    if(byte & (1<<7)) logMessage(LOG_INFO,"1\n"); else logMessage (LOG_INFO,"0\n");
}

//////////////////////////////////////////////////
//Serial//////////////////////////////////////////
//////////////////////////////////////////////////
int Serial_init(const char *identifier){
//COPY PASTE from connectResource() in the Voyager driver...
    gioEndpoint = NULL;
    GioDescriptor descriptor;
    gioInitializeDescriptor(&descriptor);

    SerialParameters serialParameters;
    gioInitializeSerialParameters(&serialParameters);
    serialParameters.baud = SERIAL_BAUD;
    descriptor.serial.parameters = &serialParameters;

    descriptor.serial.options.readyDelay = SERIAL_READY_DELAY;
    descriptor.serial.options.inputTimeout = SERIAL_INPUT_TIMEOUT;

    if ((gioEndpoint = gioConnectResource(identifier, &descriptor))) {
      return 1;
    }
    return 0;
}

//Read one byte from serial
unsigned char Serial_read(){
    #if DEBUG
    char * num[4];
    gets(num);
    return atoi(num);
    #else
    while(!gioAwaitInput(gioEndpoint,0));
    unsigned char byte;
    gioReadByte(gioEndpoint, &byte,0);
    return byte;
    #endif
}

//Write one byte to serial.
void Serial_write(unsigned char byte){
    #if DEBUG
    logMessage(LOG_INFO,">>\n");
    printByte(byte);
    #else
    gioWriteData(gioEndpoint, &byte, 1);
    #endif
}

//////////////////////////////////////////////////////////
//BRLTTY FUNCTIONS////////////////////////////////////////
//////////////////////////////////////////////////////////
static int
brl_construct (BrailleDisplay *brl,
               char **parameters,
               const char *device){
  int success;
  /*We hand brltty a non zero frame size.
  Draw requests from brltty will be ignored
  untill the initializationStatus is set to
  BUFFER_INITIALIZED.*/
  brl->textRows    = 1;
  brl->textColumns = 1;
  logMessage(LOG_DEBUG,"Initializing serial.");
  success=Serial_init(device);
  logMessage(LOG_DEBUG,"Serial initialized.");

  initializeCapabilityInitializersArray();
  initializeSpecificEventHandlers();
  initializeFrameHandlers();

  logMessage(LOG_DEBUG,"Sending initialization packet.");
  unsigned char information[4];
  information[0]=0;
  information[1]=0;
  information[2]=0;
  information[3]=0;
  sendFrame(4,0,0,information,gioEndpoint);
  logMessage(LOG_DEBUG,"Initialization packet sent.");

  return success;
}

static void
brl_destruct (BrailleDisplay *brl) {
}

static int
brl_writeWindow (BrailleDisplay *brl,
                 const wchar_t *text) {
 if(initializationStatus==BUFFER_INITIALIZED)
 if(cellsHaveChanged(previousCells,
                     brl->buffer,
                     (brl->textColumns*brl->textRows),
                     NULL,
                     NULL,
                     NULL));
   //callHandler(onCellsChanged,NULL);
 logMessage(LOG_INFO,"Line 481\n");
 return 1;
}

#ifdef BRL_HAVE_KEY_CODES
static int
brl_readKey (BrailleDisplay *brl) {
  return EOF;
}

static int
brl_keyToCommand (BrailleDisplay *brl,
                  KeyTableCommandContext context,
                  int key) {
  return EOF;
}
#endif /* BRL_HAVE_KEY_CODES */

static int getKeyCode(){
   // return readInt();
  return EOF;
}

static int
brl_readCommand (BrailleDisplay *brl, KeyTableCommandContext context) {
  logMessage(LOG_INFO,"Line 507\n");
  checkForFrameAndReact(
   &handleFrame
   ,START_OF_FRAME
   ,gioEndpoint
   ,(void*)brl);
  return EOF;
}
