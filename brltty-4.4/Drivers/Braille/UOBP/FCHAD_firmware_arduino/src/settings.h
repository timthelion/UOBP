//#define RUNTESTS
//Frame Handlers
#define NUM_FRAME_TYPES 2
#define MAX_NUM_FRAME_SUBTYPES 4
#define SERIAL_CHECK_PHASE 1000L
///Initialization Frame
////Touch sensors
//#define TEST_SENSORS
#define SENSOR_READ_PHASE 500L
#define SENSOR_SEND_PHASE 50000L
#define TOUCH_THRESHOLD 2
#define NUM_SENSORS 12
#define ANALOG_LINE A5
#define SELECTOR_BITS 4
const unsigned char selectorPins[] =
 {4
 ,8
 ,3
 ,2};
const unsigned char sensorIndexes[] =
 {15 //0
 ,13 //1
 ,14 //2
 ,12 //3
 ,11 //4
 ,9  //5
 ,10 //6
 ,8  //7
 ,0  //8
 ,2  //9
 ,1  //10
 ,3  //11
 ,4  //12
 ,6  //13
 ,5  //14
 ,7};//15
////Braille Cell
#define dotCount 8
const int dotPins[] =
 {12  //1
 ,10  //2
 ,7   //3
 ,13  //4
 ,11  //5
 ,9   //6
 ,5   //7
 ,6}; //8
#define INITIAL_CHAR 65536
////Pings
#define PING_PHASE 50000L
////PWM - Pulse width modulation
#define PWM_TIME_HIGH 80L
#define PWM_TIME_LOW 30L
#define PWM_PHASE PWM_TIME_HIGH+PWM_TIME_LOW
////Snímky
////Standard initializers
