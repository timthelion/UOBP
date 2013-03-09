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

#define FCHAD_CELL_H
#ifndef BRLTTY
 #include "../uobp_general.h"
#endif

#include <unistd.h>

/////////////////////////////////////////////////
///FCHAD Cells///////////////////////////////////
/////////////////////////////////////////////////
typedef enum{
 RIGHT_HANDED,
 LEFT_HANDED
 }Handedness;

typedef struct{
  unsigned char numDots;
  Handedness cellHandedness;
}FCHADCellState;

void * initFCHADCellState(FrameInfo frameInfo);

void * displayChar
 (FrameInfo * frameInfo
 ,unsigned char node
 ,unsigned char byte1
 ,unsigned char byte2);
