#include <MeggyJrSimple.h>

byte a;

void setup()
{
  MeggyJrSimpleSetup();
}


void loop()
{
  ClearSlate();
  
  for (int i = 1; i < 7; i++)
  {
    DrawPx(0,i,Red);
    Tone_Start(9000,20);    //A red line that climbs up the side with some ear shattering sound
    DisplaySlate();
    delay (2);
    
    
    DrawPx(i,1,a);
    a++;
    DrawPx(i,2,a);
    a++;
    DrawPx(i,3,a);
    a++;
    DrawPx(i,4,a);
    a++;
    DrawPx(i,5,a);
    a++;
    DrawPx(i,6,a);
    a++;
    Tone_Start(132193,20);
    DisplaySlate();
    delay(1);
  }
    
    DrawPx(0,7,White);   
    Tone_Start(321938,20);   //First White Dot in the corner
    DisplaySlate();
  
  for (int x = 1; x < 7; x++)
  {
    DrawPx(x,7,Green);    
    Tone_Start(332918,20);  //Green line that goes across the top
    DisplaySlate();
    delay (10);
    
    DrawPx(6,x,11);
    DrawPx(5,x,11);
    DrawPx(4,x,11);
    DrawPx(3,x,11);
    DrawPx(2,x,11);
    DrawPx(1,x,11);
    Tone_Start(39219,20);
    DisplaySlate();
    delay(1);
  }
  
    DrawPx(7,7,White);
    Tone_Start(321030,20);    //Another dot in the top left corner
    DisplaySlate();
  
  
  
  for (int y = 6; y > 0; y--)
  {
    DrawPx(7,y,Blue);
    Tone_Start(3213213,20);    
    DisplaySlate();
    delay (2);
    
    DrawPx(6,y,12);
    DrawPx(5,y,12);
    DrawPx(4,y,12);
    DrawPx(3,y,12);
    DrawPx(2,y,12);
    DrawPx(1,y,12);
    Tone_Start(2328929,20);
    DisplaySlate();
    delay(1);
  }
    
    DrawPx(7,0,White);
    Tone_Start(32913921,20);
    DisplaySlate();
        //Yet another white dot
    
  for (int z = 6; z > 0; z--)
  {
    DrawPx(z,0,Yellow); 
    Tone_Start(328139,20);   //Yellow (but it looks orange) line scoots across the bottom
    DisplaySlate();
    delay(2);
    
    DrawPx(1,z,9);
    DrawPx(2,z,9);
    DrawPx(3,z,9);
    DrawPx(4,z,9);
    DrawPx(5,z,9);
    DrawPx(6,z,9);
    Tone_Start(2392139,20);
    DisplaySlate();
    delay(1);
  }
  
  
  DrawPx(0,0,White);
  Tone_Start(391239,20);
  DisplaySlate();
    
  //This whole next chunk of code repeats everything that just happened but makes it dark so it loops around in a cool way
   

  for (int i = 1; i < 7; i++)
  {
    DrawPx(0,i,Dark);
    Tone_Start(32193,20);    //A dark line that climbs up the side
    DisplaySlate();
    delay (2);
  }
    
    DrawPx(0,7,Dark);
    Tone_Start(321032,20);    //First dark Dot in the corner
    DisplaySlate();


  for (int x = 1; x < 7; x++)
  {
    DrawPx(x,7,Dark);
    Tone_Start(3293029,20);    //dark line that goes across the top
    DisplaySlate();
    delay (2);
  }
  
    DrawPx(7,7,Dark);
    Tone_Start(2139219,20);    //Another dot in the top left corner
    DisplaySlate();
   
   
  for (int y = 6; y > 0; y--)
  {
    DrawPx(7,y,Dark);
    Tone_Start(329139,20);    
    DisplaySlate();
    delay (2);
  }
    
    DrawPx(7,0,Dark);
    Tone_Start(392939,20);
    DisplaySlate();        //Yet another dark dot
   
   
  for (int z = 6; z > 0; z--)
  {
    DrawPx(z,0,Dark);
    Tone_Start(32913202,20);    //dark (but it looks orange) line scoots across the bottom
    DisplaySlate();
    delay(2);
  }
  
  DrawPx(0,0,Dark);
  Tone_Start(3291392,20);
  DisplaySlate();
  
  for (int w = 6; w > 0; w--)
  {
    for (int h = 6; h > 0; h--)
  
    {
      DrawPx(w,h,Dark);
      DisplaySlate();
      delay(1);
    }
  }
} // The End

