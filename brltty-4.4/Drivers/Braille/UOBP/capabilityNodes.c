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
#include "capabilityNodes.h"

/* Initialize the nodes based on the information passed
(via frame type 0_1)
by the braille device.*/
void initializeCapabilityNodes(FrameInfo * frameInfo){
  logMessage(LOG_DEBUG,"Initializing capability nodes.");
  if(!preformInitializeCapabilityNodes(frameInfo))
   freeCapabilityNodeStates
     (frameInfo->capabilities
     ,frameInfo->capabilityStates);
}

unsigned char preformInitializeCapabilityNodes
 (FrameInfo * frameInfo){
  unsigned char * information = frameInfo->info;
  BrailleDisplay * brl = frameInfo->brl;
  Capability ** capabilities = frameInfo->capabilities;
  CapabilityState *(*capabilityStates)
    [MAX_NUM_NODES];
  capabilityStates=frameInfo->capabilityStates;
  uint16_t length = frameInfo->length;
  freeCapabilityNodeStates
     (frameInfo->capabilities
     ,frameInfo->capabilityStates);
  /*Jump past the device UUID, we don't need it.*/
  uint16_t i=16;
  unsigned char numberOfStandardNodes = information[i] << 8;
  if(!inc(&i,length))return 0;
  numberOfStandardNodes += information[i];
  if(!inc(&i,length))return 0;
  logMessage(LOG_DEBUG,"%d standard nodes to load.",numberOfStandardNodes);
  int capabilityNode=0;
  while(capabilityNode++<numberOfStandardNodes){

   /*First two octets are the capabilityID:*/
   uint16_t capabilityID =
     (uint16_t)information[i] << 8;
   if(!inc(&i,length))return 0;
   capabilityID +=
     (uint16_t)information[i];
   if(!inc(&i,length))return 0;
   logMessage(LOG_DEBUG,"Loading node of capability %d",capabilityID);

   /*Third octet is the node:*/
   unsigned char node = information[i];
   if(!inc(&i,length))return 0;
   logMessage(LOG_DEBUG,"Node # %d",node);

   CapabilityState* thisState =
     (CapabilityState*)
      malloc(sizeof(CapabilityState));
   thisState->settings=malloc(capabilities[capabilityID]->numSettings*sizeof(Setting));
   capabilityStates[capabilityID][node]=thisState;

   /*number of pairs*/
   thisState->numPairs=information[i];
   if(!inc(&i,length))return 0;
   thisState->pairs =(NodePair *)malloc(thisState->numPairs*sizeof(NodePair));

   unsigned char pair;
   for(pair=0;pair<thisState->numPairs;pair++){
    switch(information[i]){
     case 0:
      thisState->pairs[pair].pairingType=NO_PAIRING;
      break;
     case 1:
      thisState->pairs[pair].pairingType=PAIRED;
      break;
     case 2:
      thisState->pairs[pair].pairingType=NEEDS_PAIRING;
      break;
     default:
      logMessage(LOG_ERR, "Invalid pairing type %d.",information[i]);
      return 0;
    }
    if(!inc(&i,length))return 0;

    /* Capability to pair with */
    thisState->pairs[pair].capability
     = (uint16_t)information[i] << 8;
    if(!inc(&i,length))return 0;
    thisState->pairs[pair].capability
      +=(uint16_t)information[i];
    if(!inc(&i,length))return 0;

    /* NODE PAIR */
    thisState->pairs[pair].node=information[i];
    if(!inc(&i,length))return 0;
   }

   /*Length of the information buffer that is associated with this capability node.*/
   unsigned char capabilityNodeInfoLength =
     (uint16_t)information[i]<<8;
   if(!inc(&i,length))return 0;
   capabilityNodeInfoLength +=
     (uint16_t) information[i];
   if(!inc(&i,length))return 0;
   logMessage(LOG_DEBUG,"Node info length: %d",capabilityNodeInfoLength);

   /*Now we load the settings for the capability node.*/
   unsigned char setting=0;

   while(setting<capabilities[capabilityID]->numSettings){
    /*Read range*/
     capabilityStates [capabilityID][node]->settings[setting].range
                      =
       (uint16_t)information[i]<<8;
     if(!inc(&i,length))return 0;
     capabilityStates [capabilityID][node]->settings[setting].range
                     +=
       (uint16_t)information[i];
     if(!inc(&i,length))return 0;
   /*Read default*/
     capabilityStates [capabilityID][node]->settings[setting].sdefault
                      =
       (uint16_t)information[i]<<8;
     if(!inc(&i,length))return 0;
     capabilityStates [capabilityID][node]->settings[setting].sdefault
                     +=
       (uint16_t)information[i];
     if(!inc(&i,length))return 0;

   /*Read persistant value*/
     capabilityStates [capabilityID][node]->settings[setting].persistantValue
                      =
       (uint16_t)information[i]<<8;
     if(!inc(&i,length))return 0;
     capabilityStates [capabilityID][node]->settings[setting].persistantValue
                     +=
       (uint16_t)information[i];
     if(!inc(&i,length))return 0;

     setting++;
   }
   /*If there is space left in our buffer that could hold the node information.*/
   if(i+(capabilityNodeInfoLength-capabilities[capabilityID]->numSettings*6)<length){
   /*We initialize the state.*/
    if(capabilityID<NUM_CAPABILITIES
                  &&
        node<MAX_NUM_NODES
                  &&
      capabilities[capabilityID]){

     FrameInfo infoForInitializer=
      {.brl    = brl,
       .info   = &information[i],
       .length = capabilityNodeInfoLength};
     capabilityStates[capabilityID][node]->state
         =
       (capabilities[capabilityID]->initializer)(infoForInitializer);
     if(!capabilityStates[capabilityID][node]->state){
      logMessage(LOG_ERR,"Malformed packet.  Initialization info for capability %d node %d of invalid format.", capabilityID,node);
      return 0;
     }
    }else{
     logMessage(LOG_WARNING,"Unsuported capability %d node %d.", capabilityID, node);
    }
    i+=capabilityNodeInfoLength-capabilities[capabilityID]->numSettings*6;
   }else{
    logMessage(LOG_ERR,"ERROR 1: End of packet reached unexpectedly.  Malformed packet.");
    return 0;
   }
  }
  //Extended capabilities are not yet supported, end of buffer is safely ignored.
  logMessage(LOG_INFO,"Device initialized.");
  return 1;
}

void freeCapabilityNodeStates
 (Capability ** capabilities
 ,CapabilityState * capabilityStates
                    [NUM_CAPABILITIES]
                    [MAX_NUM_NODES]){
 uint16_t i,j;
 for(i=0;i<NUM_CAPABILITIES;i++)
  for(j=0;j<MAX_NUM_NODES;j++){
   if(capabilityStates[i][j]){
    if(capabilities[i]->freeer)
    /*If there is a custom free function use it.*/
     (capabilities[i]->freeer)(capabilityStates[i][j]->state);
    else
     free(capabilityStates[i][j]->state);
    free(capabilityStates[i][j]);
   }
  }
}

/*Safely increment an index.*/
unsigned char inc
 (uint16_t *index
 ,uint16_t length){
 if((*index)+1>=length){
  logMessage(LOG_ERR,"ERROR: End of packet reached unexpectedly.  Malformed packet.");
  return 0;
 }
 (*index)++;
 return 1;
}
