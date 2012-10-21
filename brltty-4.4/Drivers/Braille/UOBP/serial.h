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
#define SERIAL_H
#ifndef BRLTTY
 #include "uobp_general.h"
#endif

//////////////////////////////////////////////////
//Serial//////////////////////////////////////////
//////////////////////////////////////////////////
#define SERIAL 1
#define SERIAL_BAUD 9600
#define SERIAL_READY_DELAY 400
#define SERIAL_INPUT_TIMEOUT 100
#define SERIAL_WAIT_TIMEOUT 200
int Serial_init(const char *identifier, GioEndpoint * gioEndpoint);

unsigned char Serial_read();

void Serial_write(unsigned char byte);


