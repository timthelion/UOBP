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


#include "FCHAD_CELL.h"
///////////////////////////////////////////////////////
///FCHAD Cells/////////////////////////////////////////
///////////////////////////////////////////////////////
void * initFCHADCellState(FrameInfo frameInfo){
  if(frameInfo.length!=4)return NULL;
  FCHADCellState * thisState =
    (FCHADCellState *)
     malloc(sizeof(FCHADCellState));
  thisState->numDots = frameInfo.info[0];
  switch(frameInfo.info[1]){
   case 0:
    thisState->cellHandedness = RIGHT_HANDED;
    break;
   case 1:
    thisState->cellHandedness = LEFT_HANDED;
    break;
   default:
    return NULL;
  }
  return thisState;
}


