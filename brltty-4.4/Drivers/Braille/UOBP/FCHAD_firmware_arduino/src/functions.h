//Frame Handlers
void * getHandler
 ( unsigned char frameType
 , unsigned char frameSubType );
void initializeFrameHandlers();
void handleFrame
 ( unsigned int length
 , unsigned char type
 , unsigned char subType
 , unsigned char * information
 , void * callerParameter );

void checkSerial();
///Initialization Frame
void sendInitializationFrame
 ( unsigned int length
 , unsigned char * information );
////Touch sensors
void sendOnDown(unsigned char sensor);
void sendOnUp(unsigned char sensor);
TouchSensors * setupTouch();
int readTouchSensorState(unsigned char sensor);
void readTouchSensors();
void sendSensorChanges();
////Braille Cell
void dot_display_init();
void displayChar
 ( uint16_t length
 , unsigned char * information );
void displayAChar(uint16_t character);
void displayCurrentChar();
void displayNothing();
void testSolenoids();
////pings
void sendPing();
////Snímky
void initSnimekHandlers();
////Standard initializers
