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

//////////////////////////////////////////////////
///Frame Handlers/////////////////////////////////
//////////////////////////////////////////////////
FrameHandler frameHandlers
              [NUM_FRAME_TYPES]
              [MAX_NUM_FRAME_SUBTYPES]
              [MAX_NUM_HANDLERS];

//////////////////////////////////////////////////
///Capabilities///////////////////////////////////
//////////////////////////////////////////////////
Capability * capabilities[NUM_CAPABILITIES];

//////////////////////////////////////////////////
///Capability Nodes///////////////////////////////
//////////////////////////////////////////////////
CapabilityState * capabilityStates
 [NUM_CAPABILITIES]
 [MAX_NUM_NODES];

//////////////////////////////////////////////////
//Serial//////////////////////////////////////////
//////////////////////////////////////////////////
static GioEndpoint *gioEndpoint;

//////////////////////////////////////////////////
//Text cells//////////////////////////////////////
//////////////////////////////////////////////////
wchar_t * textCells=NULL;

//////////////////////////////////////////////////
//Braille cells///////////////////////////////////
//////////////////////////////////////////////////
unsigned char * thisBrailleBuffer=NULL;
unsigned int currentBrailleRows=0;
unsigned int currentBrailleColumns=0;

//////////////////////////////////////////////////
//BRLTTY FUNCTIONS////////////////////////////////
//////////////////////////////////////////////////
static int
brl_construct (BrailleDisplay *brl,
               char **parameters,
               const char *device){
  /* If I include these lines than buffer stays 1x1 even after I change the size in Capabilities/FCHAD_SENSORS.c
  despite the fact that it logs:
  brltty: Braille Display Dimensions: 1 row, 12 columns
  as if it had been successfull in resizing the display.
  One theory I have,
  is that when debugging I'm only getting the welcom message,
  and the welcome message gets clipped to 1 character when I declare the display as being 1x1.
  This would mean that the fix would be for BRLTTY to redisplay the last message after resizing the display.
  We hand brltty a non zero frame size.
  Draw requests from brltty will be ignored
  untill a capability is initialized.*/

  brl->textRows    = 0;
  brl->textColumns = 0;
  logMessage(LOG_DEBUG,"Initializing serial.");
  if(!Serial_init(device,&gioEndpoint))return 0;
  logMessage(LOG_DEBUG,"Serial initialized.");

  initializeCapabilityInitializersArray(capabilities);
  /*Set capabilityStates to NULL.
  Note that this is not the same as freeCapabilityNodeStates.
  Free capability node states inspects values that are not null
  and free's malloced arrays within the CapabilityState structs.
  We do not want to be freeing random pointers!*/
  uint16_t i,j;
  for(i=0;i<NUM_CAPABILITIES;i++)
   for(j=0;j<MAX_NUM_NODES;j++)
    capabilityStates[i][j]=NULL;

  initializeFrameHandlers(frameHandlers);
  FrameInfo frameInfo = {
   .brl=brl,
   .gioEndpoint = gioEndpoint,
   .info = NULL,
   .length = 0,
   .capabilities = capabilities,
   .capabilityStates = capabilityStates,
  .frameHandlers = frameHandlers};
  frameInfo.capabilityStates= capabilityStates;
  frameInfo.frameHandlers = frameHandlers;
  initializeCapabilityNodes(&frameInfo);

  unsigned char information[4];
  /*Host driver id (brltty=0)*/
  information[0]=0;
  information[1]=0;
  /*Host driver version.*/
  information[2]=0;
  information[3]=0;
  unsigned char initializationStatus=0;
  #define NUM_INITIAL_CHECKS_PER_TRY 100
  #define INITIAL_CHECK_DELAY 10
  int n = NUM_INITIAL_CHECKS_PER_TRY;
  while(1){
   if(n++>=NUM_INITIAL_CHECKS_PER_TRY){
    n=0;
    sendFrame(4,0,0,information,gioEndpoint);
    logMessage(LOG_DEBUG,"Initialization packet sent.");
   }
   checkForFrameAndReactBrltty(brl,&initializationStatus);
   usleep(INITIAL_CHECK_DELAY*1000);
  //Sleep for the given number of 1/1000ths of a seccond.
   if(initializationStatus)break;
  }
  logMessage(LOG_DEBUG,"Initialized!");
  return 1;
}

static void
brl_destruct (BrailleDisplay *brl) {
 logMessage(LOG_DEBUG,"Destructed.");
}

static int
brl_writeWindow (BrailleDisplay *brl,
                 const wchar_t *text) {

 free(textCells);
 textCells=wcsdup(text);

 if(  currentBrailleRows    != brl->textRows
   || currentBrailleColumns != brl->textColumns
   || !thisBrailleBuffer){
  logMessage
   (LOG_DEBUG
   ,"Resizing window from %dx%d to %dx%d"
   ,currentBrailleRows
   ,currentBrailleColumns
   ,brl->textRows
   ,brl->textColumns);
  free(thisBrailleBuffer);
  thisBrailleBuffer=
   (unsigned char *)malloc(
    sizeof(unsigned char)
    *brl->textRows
    *brl->textColumns);
  currentBrailleRows = brl->textRows;
  currentBrailleColumns = brl->textColumns;
 }
 //int * from,to;
 cellsHaveChanged
  (thisBrailleBuffer
  ,brl->buffer
  ,brl->textRows*brl->textColumns
  ,NULL
  ,NULL
  ,NULL);

 //callHandler(onCellsChanged,NULL);
 return 1;
}

#ifdef BRL_HAVE_KEY_CODES
static int
brl_readKey (BrailleDisplay *brl) {
  logMessage(LOG_DEBUG,"Read key.");
  return EOF;
}

static int
brl_keyToCommand (BrailleDisplay *brl,
                  KeyTableCommandContext context,
                  int key) {
  logMessage(LOG_DEBUG,"Key converted to command.");
  return EOF;
}
#endif /* BRL_HAVE_KEY_CODES */

checkForFrameAndReactBrltty
 (BrailleDisplay * brl
 ,unsigned char  * initializationStatus){
  FrameInfo frameInfo = {
   .brl=brl,
   .gioEndpoint = gioEndpoint,
   .info = NULL,
   .length = 0,
   .text = textCells,
   .brailleBuffer = thisBrailleBuffer,
   .capabilities = capabilities,
   .capabilityStates = capabilityStates,
   .initializationStatus = initializationStatus,
   .frameHandlers = frameHandlers};
  checkForFrameAndReact(
   &handleFrame
   ,START_OF_FRAME
   ,gioEndpoint
   ,(void*)&frameInfo);
}

static int
brl_readCommand
 (BrailleDisplay *brl
 ,KeyTableCommandContext context) {
 checkForFrameAndReactBrltty(brl,NULL);
 return EOF;
}
