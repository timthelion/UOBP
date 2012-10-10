////////////////////////////////////////
///FRAMES///////////////////////////////
////////////////////////////////////////
void checkForFrameAndReact(void * handleFrame);
void sendFrame(uint16_t length, unsigned char type, unsigned char subType, unsigned char * information);
void writeEscapedByte(unsigned char byte);
unsigned char readEscapedByte();

#define START_FLAG 02
#define END_FLAG 03
#define ESCAPE_CHAR 033
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
