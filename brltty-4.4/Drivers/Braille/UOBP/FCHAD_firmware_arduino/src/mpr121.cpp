#include "mpr121.h"
#include <Wire.h>
#include <Arduino.h>

unsigned char touchStates[12]; //to keep track of the previous touch states

void readTouchInputs(
 void (*onDown)(unsigned char),
 void (*onUp)  (unsigned char),
 unsigned char irqPin){
  if(!checkInterrupt(irqPin)){

    //read the touch state from the MPR121
    Wire.requestFrom(0x5A,2); 

    unsigned char LSB = Wire.read();
    unsigned char MSB = Wire.read();

    unsigned int touched = ((MSB << 8) | LSB); //16bits that make up the touch states

    for (unsigned char i=0; i < 12; i++){  // Check what electrodes were pressed
      if(touched & (1<<i)){
        if(!touchStates[i])(onDown)(i);
        touchStates[i] = 1;
      }else{
        if(touchStates[i])(onUp)(i);
        touchStates[i] = 0;
      }
    }
  }
}

void setupMPR121
 (unsigned int irqPin
 ,unsigned char touchThresh
 ,unsigned char relThresh){
  pinMode(irqPin, INPUT);
  digitalWrite(irqPin, HIGH); //enable pullup resistor
  Wire.begin();
  mpr121_setup(touchThresh,relThresh);
}

void mpr121_setup
 (unsigned char touchThresh
 ,unsigned char relThresh){

  set_register(0x5A, ELE_CFG, 0x00); 

  // Section A - Controls filtering when data is > baseline.
  set_register(0x5A, MHD_R, 0x01);
  set_register(0x5A, NHD_R, 0x01);
  set_register(0x5A, NCL_R, 0x00);
  set_register(0x5A, FDL_R, 0x00);

  // Section B - Controls filtering when data is < baseline.
  set_register(0x5A, MHD_F, 0x01);
  set_register(0x5A, NHD_F, 0x01);
  set_register(0x5A, NCL_F, 0xFF);
  set_register(0x5A, FDL_F, 0x02);

  // Section C - Sets touch and release thresholds for each electrode
  set_register(0x5A, ELE0_T, touchThresh);
  set_register(0x5A, ELE0_R, relThresh);

  set_register(0x5A, ELE1_T, touchThresh);
  set_register(0x5A, ELE1_R, relThresh);

  set_register(0x5A, ELE2_T, touchThresh);
  set_register(0x5A, ELE2_R, relThresh);

  set_register(0x5A, ELE3_T, touchThresh);
  set_register(0x5A, ELE3_R, relThresh);

  set_register(0x5A, ELE4_T, touchThresh);
  set_register(0x5A, ELE4_R, relThresh);

  set_register(0x5A, ELE5_T, touchThresh);
  set_register(0x5A, ELE5_R, relThresh);

  set_register(0x5A, ELE6_T, touchThresh);
  set_register(0x5A, ELE6_R, relThresh);

  set_register(0x5A, ELE7_T, touchThresh);
  set_register(0x5A, ELE7_R, relThresh);

  set_register(0x5A, ELE8_T, touchThresh);
  set_register(0x5A, ELE8_R, relThresh);
  
  set_register(0x5A, ELE9_T, touchThresh);
  set_register(0x5A, ELE9_R, relThresh);
  
  set_register(0x5A, ELE10_T, touchThresh);
  set_register(0x5A, ELE10_R, relThresh);
  
  set_register(0x5A, ELE11_T, touchThresh);
  set_register(0x5A, ELE11_R, relThresh);
  
  // Section D
  // Set the Filter Configuration
  // Set ESI2
  set_register(0x5A, FIL_CFG, 0x04);
  
  // Section E
  // Electrode Configuration
  // Set ELE_CFG to 0x00 to return to standby mode
  set_register(0x5A, ELE_CFG, 0x0C);  // Enables all 12 Electrodes
  
  
  // Section F
  // Enable Auto Config and auto Reconfig
  /*set_register(0x5A, ATO_CFG0, 0x0B);
  set_register(0x5A, ATO_CFGU, 0xC9);  // USL = (Vdd-0.7)/vdd*256 = 0xC9 @3.3V   set_register(0x5A, ATO_CFGL, 0x82);  // LSL = 0.65*USL = 0x82 @3.3V
  set_register(0x5A, ATO_CFGT, 0xB5);*/  // Target = 0.9*USL = 0xB5 @3.3V
  
  set_register(0x5A, ELE_CFG, 0x0C); 
}


unsigned char checkInterrupt(unsigned int irqpin){
  return digitalRead(irqpin);
}


void set_register(int address, unsigned char r, unsigned char v){
    Wire.beginTransmission(address);
    Wire.write(r);
    Wire.write(v);
    Wire.endTransmission();
}
