#include <Arduino.h>
void setup();
void loop();
#line 1 "src/sketch.ino"
/*
 * FCHAD firmware.  Firmware for the arduino to control any FCHAD device.  
 *
 * Copyright (C) 2012 by Timothy Hobbs, Samuel Thibault
 *
 * This hardware project would not have been possible without the guidance
 * and support of the many good people at brmlab <brmlab.cz> as well as
 * material support in terms of office space and machinery used for soldering
 * and manufacture of electric components.
 *
 * The FCHAD software comes with ABSOLUTELY NO WARRANTY.
 *
 * This is free software, placed under the terms of the
 * GNU General Public License, as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any
 * later version. Please see the file LICENSE-GPL for details.
 *
 * Web Page: http://brmlab.cz/user/timthelion
 *
 * This software is maintained by Timothy Hobbs <timothyhobbs@seznam.cz>
 */
#include "sketch.h"

///////////////////////////////////////////////////
//Frame Handlers///////////////////////////////////
///////////////////////////////////////////////////

#include "frameHandling.cpp-section"

//////////////////////////////////////////
///Initialization Frame///////////////////
//////////////////////////////////////////

#include "initializationFrame.cpp-section"

//////////////////////////////////////////////
////Send sensor touch signals/////////////////
//////////////////////////////////////////////

#include "touchSignals.cpp-section"

//////////////////////////////////////////////
////Standard initializers/////////////////////
//////////////////////////////////////////////
TouchSensors*touchSensors;

void setup()
{
  // initialize the serial communication:
  Serial.begin(SERIAL_BAUD);
  // initialize the the pins as outputs:
  dot_display_init();
  // initialize the touch sensors:
  touchSensors=setupTouch();
  initializeFrameHandlers();
}

char pingCountUp = 0;

void loop() {
 readTouchInputs(&sendOnDown,&sendOnUp,touchSensors);
 checkForFrameAndReact(&handleFrame,START_OF_FRAME,NULL,NULL);
 if(pingCountUp++>=20){
  pingCountUp=0;
  sendFrame(0,3,0,NULL,NULL);
 }
}
