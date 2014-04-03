/*
A lot of the credit for this code goes to Devon Lee, as I took a peek
at some of his dot-mover code. Thanks for all the help c:
*/


#include <MeggyJrSimple.h>

          //using bytes instead of ints because they get the job done better
byte x;   //xcoord
byte y;   //ycoord
byte z;   //delay

void setup()
{
  MeggyJrSimpleSetup();
  x=0;
  y=0;
  z=30;
}

void loop()
{
  DrawPx(x,y,Red);
  
  CheckButtonsDown();
  
  if (Button_Up) //code for going up
  {
    if (y < 7) //makes sure you can't go off the screen
    {
      ClearSlate();
      y++;
      DrawPx(x,y,Red);
    }
  }
  else
  {
    ClearSlate();
    DrawPx(x,y,Red);
  }
  
  
  
  if (Button_Down) //code for going down
  {
    if (y > 0)
    {
      ClearSlate();
      y--;
      DrawPx(x,y,Red);
    }
  }
  else
  {
    ClearSlate();
    DrawPx(x,y,Red);
  }
  
  
  
  if (Button_Right) //code for going right
  {
    if (x < 7)
    {
      ClearSlate();
      x++;
      DrawPx(x,y,Red);
    }
  }
  else
  {
    ClearSlate();
    DrawPx(x,y,Red);
  }
  
  
  
  if (Button_Left) //code for going left
  {
    if (x > 0)
    {
      ClearSlate();
      x--;
      DrawPx(x,y,Red);
    }
  }
  else
  {
    ClearSlate();
    DrawPx(x,y,Red);
  }
    
  
    
  DisplaySlate();
  delay(z);
}

