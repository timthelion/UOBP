#include "../uobp_braille.c"
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


