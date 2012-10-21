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

#define CAPABILITY_NODES_H
#ifndef BRLTTY
 #include "uobp_general.h"
#endif

void initializeCapabilityNodes(FrameInfo * frameInfo);

unsigned char preformInitializeCapabilityNodes(FrameInfo * frameInfo);

void freeCapabilityNodeStates
 (Capability ** capabilities
 ,CapabilityState * capabilityStates
                    [NUM_CAPABILITIES]
                    [MAX_NUM_NODES]);

unsigned char inc(uint16_t *index,uint16_t length);

typedef struct{
 uint16_t range;
 uint16_t sdefault;
 uint16_t persistantValue;
}Setting;

typedef enum{
 NO_PAIRING,
 PAIRED,
 NEEDS_PAIRING
 }PairingType;

typedef struct{
 PairingType pairingType;
 /*If the pairing type is anything other than PAIRED
 than the values capability and node have no meaning.*/
 uint16_t capability;
 unsigned char node;
}NodePair;

struct CapabilityState{
  unsigned char numPairs;
  NodePair * pairs;
  void * state;
  Setting * settings;
};
