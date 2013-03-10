#include "sketch.h"
#include <stdlib.h>
#include "Cell.h"
//////////////////////////////////////////
///Display functions//////////////////////
//////////////////////////////////////////
void dot_display_init(){
  for(int n = 0;n<dotCount;n++)
  {
    pinMode(dotPins[n], OUTPUT);
  }
}

void displayChar
 (uint16_t length
 ,unsigned char * information){
  if(information[0]==0){ //This is the NODE ID.  We are node 0 as this firmware only supports one cell.
   uint16_t character = (uint16_t)information[1];
   character += (uint16_t)information[2]<<8;
   displayAChar(character);
  }
}

void displayAChar(uint16_t character){
 for(uint16_t n = 0;n<dotCount;n++){
  if((1 << n) & character){
    digitalWrite(dotPins[n],HIGH);
  }else{
   digitalWrite(dotPins[n],LOW);
  }
 }
}

void testSolenoids(){
 uint16_t character=0;
 for(int n = 0;n<dotCount;n++)
 {
  character+=1<<n;
  displayAChar(character);
  delay(1500);
 }
 displayAChar(0);
}
