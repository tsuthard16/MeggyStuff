/*
"Snake? Snake, respond! Snaaaaaaaaake!"
*/

#include <MeggyJrSimple.h>

struct Point
{
  int x; 
  int y;
};


Point snake[64];

int i;
int length = 1;    //length of the snake
byte c; //Color of the snake
byte d; //Delay
byte direction; //Up = 1, Down = 2, Right = 3, Left = 4
byte appx=random(8);
byte appy=random(8);
boolean ateApple = false;


void setup()
{
  MeggyJrSimpleSetup();
  direction=1;
  d=115;
  c=4;
}

  
void directions()
{
  CheckButtonsPress();
  {
    if (Button_Up)      //snake goes up
    {
      direction = 1;
    }
      
    if (Button_Down)    //snake goes down
    {
      direction = 2;
    }

    if (Button_Right)  // snake goes right
    {
      direction = 3;
    }

    if (Button_Left)    //snake goes left
    {
      direction = 4;
    }
  }
}


void loop()
{
  DisplaySlate();
  delay(d);
  ClearSlate();
  snakeHead();
  snakeBody();
  directions();
  apples();
}

void apples()
{
  DrawPx(appx, appy, Red);
  if (snake[0].x == appx && snake[0].y == appy)
  {
    ateApple = true;
    if (ateApple == true)
    {
      appx=random(8);
      appy=random(8);
      length++;
      ateApple = false;
    }
  }
}




void snakeHead()
{
  switch(direction)
  {
    case 1:  //moves snake up
    {
      if (snake[0].y+1 <=7)
      {
        snake[i].y++;
        DrawPx(snake[0].x,snake[0].y,Blue); 
      }
      else  //makes the snake loop back around at the bottom
      {
        snake[i].y = 0;
        DrawPx(snake[0].x,snake[0].y,Blue);
      }
    }
    
    
    break;
    case 2:  //moves snake down
    {
      if (snake[0].y-1 >= 0)
      {
        snake[0].y--;
        DrawPx(snake[0].x, snake[0].y, Blue);
      }
      else  //makes the snake loop back around at the top
      {
        snake[i].y = 7;
        DrawPx(snake[0].x, snake[0].y, Blue);
      }
    }
    
    break;
    case 3:  //moves snake right
    {
      if (snake[0].x+1 <=7)
      {
        snake[0].x++;
        DrawPx(snake[0].x, snake[0].y, Blue);
      }
      else  //makes the snake loop back around at the left
      {
        snake[0].x = 0;
        DrawPx(snake[0].x, snake[0].y, Blue);
      }
    }
    
    break;
    case 4:  //moves snake left
    {
      if (snake[0].x-1 >=0)
      {
        snake[0].x--;
        DrawPx(snake[0].x, snake[0].y, Blue);
      }
      else  ////makes the snake loop back around at the right
      {
        snake[0].x = 7;
        DrawPx(snake[0].x, snake[0].y, Blue);
      }
    }
  }
}

 
 
void snakeBody()
{
  for (int i=length; i > 0; i--)
  {
    snake[i].x = snake[i-1].x;
    snake[i].y = snake[i-1].y;
    DrawPx(snake[i].x, snake[i].y, Orange);
  }
} 
    
  
  
  
  
  
  
  
  
  
