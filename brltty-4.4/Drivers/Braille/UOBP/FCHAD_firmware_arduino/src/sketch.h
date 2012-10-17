#include "level2.h"
#include "mpr121.h"
#include <stdlib.h>
#include "UUID.h"
#define IRQ_PIN 2
#define NULL 0
#define dotCount 8

const int dotPins[] = {13,12,11,10,9,8,7,6};
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

//////////////////////////////////////////
///Display functions//////////////////////
//////////////////////////////////////////
void dot_display_init();
void displayChar(unsigned int length, unsigned char * information);

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
