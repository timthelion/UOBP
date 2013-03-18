#include <Arduino.h>

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
#include "includes.h"
#include "data-types.h"
#include "settings.h"
#include "functions.h"
//Frame Handlers
#include "frameHandling.cpp-section"
///Initialization Frame
#include "initializationFrame.cpp-section"
////Touch sensors
#include "touchSensors.cpp-section"
////Braille Cell
#include "cell.cpp-section"
////Pings
#include "ping.cpp-section"
////Snímky
#include "snimekHandlers.cpp-section"
////Standard initializers
#include "standardInitializers.cpp-section"
