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

#define FCHAD_SENSORS_H
#ifndef BRLTTY
 #include "../uobp_general.h"
#endif
//////////////////////////////////////////////////
///FCHAD Sensors//////////////////////////////////
//////////////////////////////////////////////////
typedef struct{
  uint16_t rows,cols,prevRow,prevCol;
  unsigned char * sensors; //Boollean values, 1 for down(sensor currently being pressed), 0 for up.
} FCHADSensorsState;

void * initFCHADSensorsState(FrameInfo frameInfo);
void freeFCHADSensorsState(FCHADSensorsState * thisSensorState);

#define SENSOR_UP   0
#define SENSOR_DOWN 1

void reactToSensorUp(FrameInfo * frameInfo);

void reactToSensorDown(FrameInfo * frameInfo);

void reactToSensorAction(FrameInfo * frameInfo,
                         unsigned char action);

void updateFCHADFromSensorValues
(CapabilityState * thisCapabilityNode
 ,unsigned char node
 ,FrameInfo * frameInfo);

///////////////////////////////////////////////////////
///Sensor logging//////////////////////////////////////
///////////////////////////////////////////////////////
#define LOG_EVERYTHING 1
#ifdef LOG_EVERYTHING
void logSensorDown(FrameInfo * frameInfo);

void logSensorUp(FrameInfo * frameInfo);

void logSensorAction(FrameInfo * frameInfo,
                     unsigned char action);

#endif
