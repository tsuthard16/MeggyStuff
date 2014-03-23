#include <MeggyJrSimple.h>

byte a;

void setup()                    //Test Program to see if i can generate random
                                //colors. Sort of worked, but it ends up on
                                //one color eventually.
{
  MeggyJrSimpleSetup();
}

void loop()
{
  for (int i = 0; i < 8; i++)
  {
    for (int a = 1; a < 15; a++)
    {
      DrawPx(i,i,a);           //Draws a diagonal line accross the screen.
      a++;
      delay(50);
      DisplaySlate();
    }
  }
}
