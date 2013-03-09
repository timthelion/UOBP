#include "resistive_touch.h"

TouchSensors * setupTouch(){
 TouchSensors* theseTouchSensors =
  (TouchSensors*)
   malloc(sizeof(TouchSensors));
 theseTouchSensors->touchStates=(unsigned char *)malloc(NUM_SENSORS*sizeof(unsigned char));
 theseTouchSensors->touchSensorValues=(long *)malloc(NUM_SENSORS*sizeof(long));
 for(unsigned char i=0;i<NUM_SENSORS;i++)
  theseTouchSensors->touchStates[i]=0;
 for(unsigned char i = 0; i < SELECTOR_BITS; i++)
  pinMode(selectorPins[i],OUTPUT);
 return theseTouchSensors;
}

void readTouchInputs
 (void (*onDown)(unsigned char)
 ,void (*onUp)  (unsigned char)
 ,TouchSensors * theseTouchSensors){
 //Zero the sensors.
 for(unsigned char i=0;i<NUM_SENSORS;i++)
  theseTouchSensors->touchSensorValues[i]=0;
 //Read the sensors.
 for(unsigned char j = 0; j<NUMCHECKS;j++){
  for(unsigned char i = 0; i<NUM_SENSORS;i++){
   theseTouchSensors->touchSensorValues[i]=theseTouchSensors->touchSensorValues[i]+readTouchSensorState(i);
  }
  delay(CHECKDELAY);
 }
 //Send change events.
 for(unsigned char i = 0; i<NUM_SENSORS;i++){
  if((theseTouchSensors->touchSensorValues[i]>TOUCH_THRESHOLD)
                                 !=
                     theseTouchSensors->touchStates[i]){
   if(theseTouchSensors->touchStates[i]){
    theseTouchSensors->touchStates[i]=0;
    (onUp)(i);
   }else{
    theseTouchSensors->touchStates[i]=1;
    (onDown)(i);
   }
  }
 }
}

int readTouchSensorState(unsigned char sensor){
 for(unsigned char i = 0; i < SELECTOR_BITS; i++)
  digitalWrite(selectorPins[i],((sensorIndexes[sensor]>>i) & 1));
 return (analogRead(ANALOG_LINE));
}
