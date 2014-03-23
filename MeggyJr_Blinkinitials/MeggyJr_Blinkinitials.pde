/*
  MeggyJr_Blink.pde
 
 Example file using the The Meggy Jr Simplified Library (MJSL)
  from the Meggy Jr RGB library for Arduino
   
 Display my initials.
   

/*
 * Adapted from "Blink,"  The basic Arduino example.  
 * http://www.arduino.cc/en/Tutorial/Blink
 */

#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}

void loop()                     // run over and over again
{
  
  DrawPx(1,6,FullOn);        //Draws a T
  DrawPx(2,6,FullOn);
  DrawPx(3,6,FullOn);
  DrawPx(2,5,FullOn);
  DrawPx(2,4,FullOn);
  
  DrawPx(4,3,FullOn);        //Draws a Y
  DrawPx(6,3,FullOn);
  DrawPx(5,2,FullOn);
  DrawPx(5,1,FullOn);
  
  DisplaySlate();
  delay(1);
  
  ClearSlate();
  DisplaySlate();
  
  delay(1);
    // Write the drawing to the screen.
               // waits for a millisecond
}


