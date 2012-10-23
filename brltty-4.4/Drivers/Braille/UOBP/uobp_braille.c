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
  untill a capability is initialized./

  brl->textRows    = 1;
  brl->textColumns = 1;
  brl->resizeRequired = 1;*/
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
  .frameHandlers = frameHandlers
};
  frameInfo.capabilityStates= capabilityStates;
  frameInfo.frameHandlers = frameHandlers;
  initializeCapabilityNodes(&frameInfo);

  logMessage(LOG_DEBUG,"Sending initialization packet.");
  unsigned char information[4];
  /*Host driver id (brltty=0)*/
  information[0]=0;
  information[1]=0;
  /*Host driver version.*/
  information[2]=0;
  information[3]=0;
  sendFrame(4,0,0,information,gioEndpoint);
  logMessage(LOG_DEBUG,"Initialization packet sent.");
  return 1;
}

static void
brl_destruct (BrailleDisplay *brl) {
}

static int
brl_writeWindow (BrailleDisplay *brl,
                 const wchar_t *text) {
   //callHandler(onCellsChanged,NULL);
 free(textCells);
 textCells=wcsdup(text);
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
brl_readCommand
 (BrailleDisplay *brl
 ,KeyTableCommandContext context) {
  FrameInfo frameInfo = {
   .brl=brl,
   .gioEndpoint = gioEndpoint,
   .info = NULL,
   .length = 0,
   .text = textCells,
   .capabilities = capabilities,
   .capabilityStates = capabilityStates,
   .frameHandlers = frameHandlers};
  checkForFrameAndReact(
   &handleFrame
   ,START_OF_FRAME
   ,gioEndpoint
   ,(void*)&frameInfo);
  return EOF;
}
