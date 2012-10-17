#include "platform.h"
#ifdef ARDUINO
#include "Arduino.h"
typedef struct{}GioEndpoint;
#endif
#ifdef BRLTTY
#include "prologue.h"
#include "io_generic.h"
#include "log.h"
#endif
#include <stdlib.h>

////////////////////////////////////////
///FRAMES///////////////////////////////
////////////////////////////////////////
typedef enum{
 START_OF_FRAME,
 CONTINUATION_OF_FRAME
 //When we know that the start byte has already been eaten.
 }FrameStatus;

void checkForFrameAndReact(
 void handleFrame(
   uint16_t length,
   unsigned char type,
   unsigned char subType,
   unsigned char * information,
   void * passedCallerParameter
   ),
 FrameStatus frameStatus,
 GioEndpoint *gioEndpoint,
 void * callerParameter
 );

typedef enum{
 READ_FAILED_UNEXPECTED_START_FLAG,
 READ_FAILED_UNEXPECTED_END_FLAG,
 READ_SUCCESS
 }ReadEscapedByteExitStatus;


unsigned char continueReading(
 ReadEscapedByteExitStatus
 ,void handleFrame(
   uint16_t length,
   unsigned char type,
   unsigned char subType,
   unsigned char * information,
   void * passedCallerParameter
   )
 ,GioEndpoint *gioEndpoint
 ,void * callerParameter
 );

void sendFrame(
 uint16_t length,
 unsigned char type,
 unsigned char subType,
 unsigned char * information,
 GioEndpoint *gioEndpoint);

void writeEscapedByte(
 unsigned char byte
 ,GioEndpoint *gioEndpoint);


ReadEscapedByteExitStatus readEscapedByte(
 GioEndpoint *gioEndpoint
 ,unsigned char * byte);

unsigned char nextChar(GioEndpoint *gioEndpoint);

unsigned char serialAvailable(
 GioEndpoint *gioEndpoint);

unsigned char serialRead(
 GioEndpoint * gioEndpoint);

void serialWrite(
 GioEndpoint *gioEndpoint
 ,unsigned char byte);

#define START_FLAG 200
#define END_FLAG 201
#define ESCAPE_CHAR 202
#define CHECKSUM_SIZE 1
/*
[START_FLAG(1 octet) |
 LEN(2 octets)       |
 TYPE(1 octet)       |
 SUBTYPE(1 octet)    |
 INFORMATION         |
 XOR(1 octet)        |
 END_FLAG(1 octet)   ]
*/
