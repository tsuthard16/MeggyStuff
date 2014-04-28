//Meggy "don't get crushed" game
/*
void to draw the player
void to move the player left and right

for the actual cieling that comes down to crush the player, it will have a
one-pixel gap that the player will have to stand under before the cieling falls.

the cieling will move down three pixels slowly, and then it will fall down quickly.
After the cieling falls, don't let the player move.
The cieling will dissolve and a new one will appear at the top of the screen.

The delay of the cieling falling will decrease each time.

If the player presses a button, it will speed up his character's movement, which
will help in the late game.

*/

#include <MeggyJrSimple.h>

//////////Global Variables//////////
byte playerx=3;
byte playery=0;
byte playerDirection=0;  //1 moves left, 2 moves right


void setup()
{
  MeggyJrSimpleSetup();
}





void drawPlayer()
{
  DrawPx(playerx, playery, Yellow);
}

void movePlayer()
{
  switch(playerDirection)
  {
    case 0:  //playerDirection = 0, so no movement, it just draws the player in the same spot
    {
      DrawPx(playerx, playery, Yellow)
    }
    break;
    
    case 1:  //for moving the player left
    {
      if (playerx >= 0)
      {
        playerx--;
        DrawPx(playerx, playery, Yellow);
      }
    }
    break;
    
    case 2:  //for moving the player right
    {
      if (playerx <= 7)
      {
        playerx++;
        DrawPx(playerx, playery, Yellow);
      }
    }
    break;
  }
}

    
  

void loop()
{ 
  directions();
  movePlayer();    
  drawPlayer();
}
  

void directions();
{
  CheckButtonsDown();
  {
    if (Button_Left)
    {
      playerDirection = 1;
      playerx--;
    }
    else
    {
      playerDirection = 0;
    }
    
    if (Button_Right)
    {
      playerDirection = 2;
      playerx++;
    }
    else
    {
      playerDirection = 0;
    }
  }
}

  
