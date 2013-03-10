#define NUM_SENSORS 12
#include <Wire.h>
#include <Arduino.h>

typedef struct{
 unsigned char * touchStates;
 long * touchSensorValues;
}TouchSensors;

#include "GenericTouchInterface.h"

#define ANALOG_LINE A5
#define SELECTOR_BITS 4

//Each sensor is read NUMCHECKS times.
#define NUMCHECKS 5
//The sum of the reads must be higher than TOUCH_THRESHOLD to register a touch.
#define TOUCH_THRESHOLD 5
//Each round of checks is separated by a CHECKDELAY milisecond delay.
#define CHECKDELAY 1

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

int readTouchSensorState(unsigned char);
