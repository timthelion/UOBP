#include <stdlib.h>
#define NULL 0
#define dotCount 8

#ifndef CELL
 #include "Cell.h"
#endif

#include "UUID.h"
#include "level1.h"
#include "level2.h"
//#define CAPSENSE
#ifdef CAPSENSE
 #include <Wire.h>
 #include "mpr121.h"
#endif
#define RESISTIVE_TOUCH
#ifdef RESISTIVE_TOUCH
 #include "resistive_touch.h"
#endif

//#define RUNTESTS

/*const int dotPins[] =
 {6   //1
 ,9   //2
 ,11  //3
 ,5   //4
 ,7   //5
 ,10  //6
 ,13  //7
 ,12};//8*/
const int dotPins[] =
 {12  //1
 ,10  //2
 ,7   //3
 ,13  //4
 ,11  //5
 ,9   //6
 ,5   //7
 ,6};//8
///////////////////////////////////////////////////
//Frame Handlers///////////////////////////////////
///////////////////////////////////////////////////
#define NUM_FRAME_TYPES 2
#define MAX_NUM_FRAME_SUBTYPES 4

void * getHandler (unsigned char frameType, unsigned char frameSubType);

void initializeFrameHandlers();

void handleFrame(unsigned int length,unsigned char type, unsigned char subType, unsigned char * information,void*callerParameter);

//////////////////////////////////////////
///Initialization Frame///////////////////
//////////////////////////////////////////
void sendInitializationFrame(unsigned int length,unsigned char * information);

//////////////////////////////////////////////
////Send sensor touch signals/////////////////
//////////////////////////////////////////////
void sendOnDown(unsigned char sensor);
void sendOnUp(unsigned char sensor);
//////////////////////////////////////////////
////Standard initializers/////////////////////
//////////////////////////////////////////////
//void setup();
//void loop();
