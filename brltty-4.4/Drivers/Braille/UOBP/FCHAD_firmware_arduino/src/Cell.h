#ifndef ARDUINO
 #include "sketch.h"
#endif
#define CELL
#include "Arduino.h"

void dot_display_init();
void displayChar
 (uint16_t length
 ,unsigned char * information);
void displayAChar(uint16_t character);
void testSolenoids();
