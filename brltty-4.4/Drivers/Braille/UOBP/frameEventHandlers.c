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

#include "frameEventHandlers.h"
/////////////////////////////////////////////////
///Frame Handlers////////////////////////////////
/////////////////////////////////////////////////
void initializeFrameHandlers(
 void (*frameHandlers
         [NUM_FRAME_TYPES]
         [MAX_NUM_FRAME_SUBTYPES]
         [MAX_NUM_HANDLERS])
           (FrameInfo * frameInfo)){
 int i, j, k;
 for(i=0;i<NUM_FRAME_TYPES;i++)
  for(j=0;j<MAX_NUM_FRAME_SUBTYPES;j++)
    for(k=0;k<MAX_NUM_HANDLERS;k++)
     frameHandlers[i][j][k]=NULL;
 /*All frames subtypes which are NULL
 or otherwise left undefined are ignored.*/
 addFrameEventHandler(frameHandlers[0][1],(void *)&initializeCapabilityNodes);
 addFrameEventHandler(frameHandlers[2][3],(void *)&reactToSensorDown);
 addFrameEventHandler(frameHandlers[2][4],(void *)&reactToSensorUp);
 #ifdef LOG_EVERYTHING
 /* This is for research purposes,
 to log how users use the device.*/
 addFrameEventHandler(frameHandlers[2][3],(void *)&logSensorDown);
 addFrameEventHandler(frameHandlers[2][4],(void *)&logSensorUp);
 #endif
}

void * getFrameHandler
 (unsigned char frameType
 ,unsigned char frameSubType
 ,void (*frameHandlers
         [NUM_FRAME_TYPES]
         [MAX_NUM_FRAME_SUBTYPES]
         [MAX_NUM_HANDLERS])
           (FrameInfo * frameInfo)){
 if(frameType >= NUM_FRAME_TYPES)return NULL;
 if(frameSubType >= MAX_NUM_FRAME_SUBTYPES) return NULL;
 return frameHandlers
         [frameType]
         [frameSubType];
}

void handleFrame(
 uint16_t length
 ,unsigned char type
 ,unsigned char subType
 ,unsigned char * information
 ,void * uncastedFrameInfo){
 /*I have no idea if this is a sane way to cast this.*/
 FrameInfo * frameInfo =
  (FrameInfo*)uncastedFrameInfo;
 void * handler = getFrameHandler
                   (type
                   ,subType
                   ,frameInfo->frameHandlers);
 frameInfo->info=information;
 frameInfo->length=length;
 logMessage(LOG_DEBUG,"Calling frame handler. type:%d,subType:%d First byte of information is %d",type,subType,frameInfo->info[0]);
 callHandler(handler,frameInfo);
}

/////////////////////////////////////////////////
///Event Handlers////////////////////////////////
/////////////////////////////////////////////////
void callFrameEventHandler(
 void (*handler[])(FrameInfo * frameInfo),
 FrameInfo * frameInfo){
 int i=0;
 while(handler[i]
         &&
       i<MAX_NUM_HANDLERS){
    (handler[i++])(frameInfo);
 }
}

unsigned char addFrameEventHandler(
 void (*handler[])(FrameInfo * frameInfo)
 ,void (*addition)(FrameInfo * frameInfo)){
 int i = 0;
 while(handler[i]&&i<MAX_NUM_HANDLERS)i++;
 if(i<MAX_NUM_HANDLERS){
  handler[i]=addition;
  return ADD_HANDLER_SUCCESS;
 }
 else return ADD_HANDLER_FAIL_MAX_NUM_HANDLERS_OVERFLOW;
}
