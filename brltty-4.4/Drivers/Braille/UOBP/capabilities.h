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

#ifndef BRLTTY
#include "uobp_braille.h"
#endif

//////////////////////////////////////////////////
///Capabilities///////////////////////////////////
//////////////////////////////////////////////////
/*Just increase this number as more capabilities are supported by the driver.*/
#define NUM_CAPABILITIES 9
/*Maximum defined by the standard is 256,
but that woudl be a rather pointless waste of memory as we'll probably never have more than 2 or 3.*/
#define MAX_NUM_NODES    5
#define MAX_NUM_SETTINGS 5

struct Capability{
 char * name;
 void *(*initializer)(FrameInfo frameInfo);
 void (*freeer)(void *);
 unsigned char numSettings;
 char * settings[MAX_NUM_SETTINGS];
};

void initializeCapabilityInitializersArray(
 Capability ** capabilities);

typedef struct{
 uint16_t range;
 uint16_t sdefault;
 uint16_t persistantValue;
}setting;

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
}nodePair;

typedef struct{
  unsigned char numPairs;
  nodePair * pairs;
  void * state;
  setting * settings;
}CapabilityState;
