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

#include "capabilities.h"

/*////////////////////////////////////////////////
///Capabilities///////////////////////////////////
//////////////////////////////////////////////////
  When a frame type 0 subType 1 is sent from the device the braille driver extracts from this frame a list of capability nodes provided by the device.
  This allows the driver to then intialize it's own internal state pertaining to each node.
  When a capability node is initialized the capability initializer is run and the pointer to the new state is stored in the capabilityStates array
  along with settings information regarding that capability.
  These states are freed once another frame type 0 subType1 is received, as some nodes may have dissapeared.

 The intializers and freeers for the states are held in the capability struct which contains.

 Capability name.

 The initializer for the capability of type:

 void * initializer(unsigned char * information);

 The information parameter being the information buffer from the 0_1 frame
 (the part which follows the SETTINGS).
 This is a non null terminated buffer.
 You should know the length.

 This returns a new state object that holds information about a given concrete capability node
 (For example, how many cells a given braille display has).

 The free'er, of type:

 void freeer(void * state);

 If the freeer is NULL, then the free function is used.

 And the settings which can be set for that capability.
 */

void initializeCapabilityInitializersArray(
 Capability ** capabilities){
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
