/*
A lot of the cait for this code goes to Devon Lee, as I took a peek
at some of his dot-mover code. Thanks for all the help c:
*/


#include <MeggyJrSimple.h>

          //using bytes instead of ints because they get the job done better
byte x;   //xcoord
byte y;   //ycoord
byte z;   //delay
byte a;   //color cycle button
byte i;   //xcoord for obstacle
byte o;   //ycoord for obstacle

void setup()
{
  MeggyJrSimpleSetup();
  x=0;
  y=0;
  z=300;
  a=1;
  i=5;
  o=6;
}

void obstacle()
{
  DrawPx(i,o,Yellow);
  DisplaySlate();
}

void loop()
{
  DrawPx(x,y,a);
  
  CheckButtonsDown();
  
  if (Button_A)
  {
    if (a < 14)
    {
      ClearSlate();
      a++;
      DisplaySlate();
    }
  }
  
  if (Button_B)
  {
    if (a > 1)
    {
      ClearSlate();
      a--;
      DisplaySlate();
    }
  }
  
  if (Button_Up) //code for going up
  {
    if (y < 7) //makes sure you can't go off the screen
    {
      ClearSlate();
      y++;
      DrawPx(x,y,a);
    }
  }
  else
  {
    ClearSlate();
    DrawPx(x,y,a);
  }
  
  
  
  if (Button_Down) //code for going down
  {
    if (y > 0)
    {
      ClearSlate();
      y--;
      DrawPx(x,y,a);
    }
  }
  else
  {
    ClearSlate();
    DrawPx(x,y,a);
  }
  
  
  
  if (Button_Right) //code for going right
  {
    if (x < 7)
    {
      ClearSlate();
      x++;
      DrawPx(x,y,a);
    }
  }
  else
  {
    ClearSlate();
    DrawPx(x,y,a);
  }
  
  
  
  if (Button_Left) //code for going left
  {
    if (x > 0)
    {
      ClearSlate();
      x--;
      DrawPx(x,y,a);
    }
  }
  else
  {
    ClearSlate();
    DrawPx(x,y,a);
  }
    
  obstacle();
  
  
  
  if (Button_Up) //All the following Code is for bumping into obstacle(); The problem with it is that it only works for those coordinates.
  {              //Not sure how to make it do the same thing as this, but only when it touches the obstacle. Maybe if I learn to use ReadPx.
    if (y == 6)
    {
      if (x == 5)
      {
        ClearSlate();
        y--;
        //DrawPx(x,y,a);
        DisplaySlate();
      }
    }
  }
  
  if (Button_Right)
  {
    if (y == 6)
    {
      if (x == 5)
      {
        ClearSlate();
        x--;
        DisplaySlate();
      }
    }
  }
  
  if (Button_Down)
  {
    if (y == 6)
    {
      if (x == 5)
      {
        ClearSlate();
        y++;
        DisplaySlate();
      }
    }
  }
  
  if (Button_Left)
  {
    if (y == 6)
    {
      if (x == 5)
      {
        ClearSlate();
        x++;
        DisplaySlate();
      }
    }
  }
  
  
  DisplaySlate();
  delay(z);
}

