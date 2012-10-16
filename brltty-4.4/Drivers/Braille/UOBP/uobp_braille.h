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

#include "prologue.h"
#include "io_generic.h"
#include "log.h"

#include <stdlib.h>
#include <string.h>

#include "brl_driver.h"

#define BRLTTY
#include "level2.h"

///////////////////////////////////////////////////////
///Event Handlers//////////////////////////////////////
///////////////////////////////////////////////////////
#define MAX_NUM_HANDLERS 5
void callHandler(void (*handler[])(),void * info);

#define ADD_HANDLER_SUCCESS 0
#define ADD_HANDLER_FAIL_MAX_NUM_HANDLERS_OVERFLOW 1

unsigned char addHandler(void (*handler[])(),
                         void (*addition)());

///////////////////////////////////////////////////////
///Specific Event Handlers/////////////////////////////
///////////////////////////////////////////////////////
void initializeSpecificEventHandlers();

///////////////////////////////////////////////////////
///Frame Handlers//////////////////////////////////////
///////////////////////////////////////////////////////
#define NUM_FRAME_TYPES 3
#define MAX_NUM_FRAME_SUBTYPES 4

void * getFrameHandler (unsigned char frameType,
                        unsigned char frameSubType);

void initializeFrameHandlers();

void handleFrame(
 uint16_t length,
 unsigned char type,
 unsigned char subType,
 unsigned char * information,
 void * callerParameter);

typedef struct{
  BrailleDisplay * brl;
  unsigned char  * info;
}FrameInfo;

///////////////////////////////////////////////////////
///Capabilities////////////////////////////////////////
///////////////////////////////////////////////////////
#define NUM_CAPABILITIES 9 //Just increase this number as more capabilities are supported by the driver.
#define MAX_NUM_NODES    5 //Maximum defined by the standard is 256, but that woudl be a rather pointless waste of memory as we'll probably never have more than 2 or 3.
#define MAX_NUM_SETTINGS 5
void initializeCapabilityInitializersArray();

typedef struct{
 char * name;
 void *(*initializer)(unsigned char *,BrailleDisplay*);
 void (*freeer)(void *);
 unsigned char numSettings;
 char * settings[MAX_NUM_SETTINGS];
}Capability;

struct capabilityState{
  void * state;
  uint16_t * settings;
};

void initializeCapabilityNodes(uint16_t length, FrameInfo * frameInfo);

///////////////////////////////////////////////////////
///FCHAD Cells/////////////////////////////////////////
///////////////////////////////////////////////////////
typedef struct{
  unsigned char numDots;
}FCHADCellState;

void * initFCHADCellState(
 unsigned char * information,
 BrailleDisplay * brl);

///////////////////////////////////////////////////////
///FCHAD Sensors///////////////////////////////////////
///////////////////////////////////////////////////////
typedef struct{
  uint16_t rows,cols,prevRow,prevCol;
  unsigned char ** sensors; //Boollean values, 1 for down(sensor currently being pressed), 0 for up.
} FCHADSensorsState;

void * initFCHADSensorsState(
 unsigned char * information,
 BrailleDisplay * brl);
void freeFCHADSensorsState(FCHADSensorsState * thisSensorState);

#define SENSOR_UP   0
#define SENSOR_DOWN 1

void reactToSensorUp(uint16_t length,
                     FrameInfo * frameInfo);

void reactToSensorDown(uint16_t length,
                       FrameInfo * frameInfo);

void reactToSensorAction(uint16_t length,
                         FrameInfo * frameInfo,
                         unsigned char action);

void updateFCHADFromSensorValues
 (FCHADSensorsState * myState,
  unsigned char node);

///////////////////////////////////////////////////////
///Sensor logging//////////////////////////////////////
///////////////////////////////////////////////////////
#define LOG_EVERYTHING 1
#ifdef LOG_EVERYTHING
void logSensorDown(uint16_t length,
                   FrameInfo * frameInfo);

void logSensorUp(uint16_t length,
                 FrameInfo * frameInfo);

void logSensorAction(uint16_t length,
                     FrameInfo * frameInfo,
                     unsigned char action);

#endif

///////////////////////////////////////////////////////
///DEBUGGING///////////////////////////////////////////
///////////////////////////////////////////////////////
//#define DEBUG

static void printByte(unsigned char byte);

//////////////////////////////////////////////////
//Serial//////////////////////////////////////////
//////////////////////////////////////////////////
#define SERIAL 1
#define SERIAL_BAUD 9600
#define SERIAL_READY_DELAY 400
#define SERIAL_INPUT_TIMEOUT 100
#define SERIAL_WAIT_TIMEOUT 200
static GioEndpoint *gioEndpoint;
int Serial_init(const char *identifier);

unsigned char Serial_read();

void Serial_write(unsigned char byte);

//////////////////////////////////////////////////////////
//BRLTTY FUNCTIONS////////////////////////////////////////
//////////////////////////////////////////////////////////
static int
brl_construct (BrailleDisplay *brl,
               char **parameters,
               const char *device);

static void
brl_destruct (BrailleDisplay *brl);

static int
brl_writeWindow (BrailleDisplay *brl,
                 const wchar_t *text);

#ifdef BRL_HAVE_KEY_CODES
static int
brl_readKey (BrailleDisplay *brl);

static int
brl_keyToCommand (BrailleDisplay *brl,
                  KeyTableCommandContext context,
                  int key);
#endif /* BRL_HAVE_KEY_CODES */

static int getKeyCode();

static int
brl_readCommand (BrailleDisplay *brl, KeyTableCommandContext context);

///////////////////////////////////////////////////
/// Initialization levels//////////////////////////
///////////////////////////////////////////////////
#define BUFFER_UNINITIALIZED  0
#define BUFFER_INITIALIZED    1
