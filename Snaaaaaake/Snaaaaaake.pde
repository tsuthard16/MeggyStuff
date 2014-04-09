/*
"Snake? Snake, respond! Snaaaaaaaaake!"

Instance variables for playerx, playery

Create a direction variable

Each time through the loop...

If the left button is pressed...

Draw the player and display the slate.

If directionright = 0, add one to x

Adjust (or correct) values

Drawslate, delay, clearslate

//////////
void directionup
{
  if the up button is pressed
  y continually increases in height until another button is pressed
}


void directionleft
{
  if the left button is pressed;
  the x value continues left until it hits the edge of the screen
}





if (button_up)
{
  clearslate();
  goingup;
  displayslate();        <------ something like this maybe?
}




*/

#include <MeggyJrSimple.h>

byte playerx;
byte playery;
byte c; //Color of the snake
byte d; //Delay
byte direction; //Up = 0, Right = 90, Down = 180, Left = 250



void setup()
{
  MeggyJrSimpleSetup();
  byte playerx=0;
  byte playery=0;
  byte direction=0;
  d=120;
  c=4;

}



void apples()
{
  byte appx = random(8);
  byte appy = random(8);
  boolean ateApple;
  DrawPx(appx,appy,Red);
  DisplaySlate();
}


void loop()
{
  
  DrawPx(playerx, playery, c);
  
  CheckButtonsPress();
  {
    if (Button_Up)
    {
      direction = 0;
    }
        
        
    if (direction == 0)
    {
      if (playery < 7)
        {
          ClearSlate();
          playery++;
          DrawPx(playerx,playery,c);
          delay(d);
          DisplaySlate();
        }
     }
      
      
    
    
    
    if (Button_Down)
    {
      direction = 180;
    }
      if (direction == 180)
      {
        if (playery > 0)
        {
          ClearSlate();
          playery--;
          DrawPx(playerx,playery,c);
          delay(d);
          DisplaySlate();
        }
      }
    }
    
    if (Button_Right)
    {
      direction = 90;
    }
    
    if (direction == 90)
    {
      if (playerx < 7)
      {
        ClearSlate();
        playerx++;
        DrawPx(playerx,playery,c);
        delay(d);
        DisplaySlate();
      }
    }
    
    if (Button_Left)
    {
      direction = 250;
    }
    
    if (direction == 250)
    {
      if (playerx > 0)
      {
        ClearSlate();
        playerx--;
        DrawPx(playerx,playery,c);
        delay(d);
        DisplaySlate();
      }
    }
  
  apples();  
  
}

