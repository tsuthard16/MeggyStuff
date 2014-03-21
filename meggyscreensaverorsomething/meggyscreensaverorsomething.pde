#include <MeggyJrSimple.h>

void setup()
{
  MeggyJrSimpleSetup();
}

void loop()
{
  ClearSlate();
  
  for (int i = 1; i < 7; i++)
  {
    DrawPx(0,i,Red);          //A red line that climbs up the side
    DisplaySlate();
    delay (50);
    
    DrawPx(i,1,8);
    DrawPx(i,2,8);
    DrawPx(i,3,8);
    DrawPx(i,4,8);
    DrawPx(i,5,8);
    DrawPx(i,6,8);
    DisplaySlate();
    delay(25);
  }
    
    DrawPx(0,7,White);      //First White Dot in the corner
    DisplaySlate();
  
  for (int x = 1; x < 7; x++)
  {
    DrawPx(x,7,Green);      //Green line that goes across the top
    DisplaySlate();
    delay (50);
    
    DrawPx(6,x,11);
    DrawPx(5,x,11);
    DrawPx(4,x,11);
    DrawPx(3,x,11);
    DrawPx(2,x,11);
    DrawPx(1,x,11);
    DisplaySlate();
    delay(25);
  }
  
    DrawPx(7,7,White);      //Another dot in the top left corner
    DisplaySlate();
  
  
  
  for (int y = 6; y > 0; y--)
  {
    DrawPx(7,y,Blue);          
    DisplaySlate();
    delay (50);
    
    DrawPx(6,y,12);
    DrawPx(5,y,12);
    DrawPx(4,y,12);
    DrawPx(3,y,12);
    DrawPx(2,y,12);
    DrawPx(1,y,12);
    DisplaySlate();
    delay(25);
  }
    
    DrawPx(7,0,White);
    DisplaySlate();        //Yet another white dot
    
  for (int z = 6; z > 0; z--)
  {
    DrawPx(z,0,Yellow);    //Yellow (but it looks orange) line scoots across the bottom
    DisplaySlate();
    delay(50);
    
    DrawPx(1,z,9);
    DrawPx(2,z,9);
    DrawPx(3,z,9);
    DrawPx(4,z,9);
    DrawPx(5,z,9);
    DrawPx(6,z,9);
    DisplaySlate();
    delay(25);
  }
  
  
  DrawPx(0,0,White);
  DisplaySlate();
    
  //This whole next chunk of code repeats everything that just happened but makes it dark so it loops around in a cool way
   

  for (int i = 1; i < 7; i++)
  {
    DrawPx(0,i,Dark);          //A dark line that climbs up the side
    DisplaySlate();
    delay (50);
  }
    
    DrawPx(0,7,Dark);      //First dark Dot in the corner
    DisplaySlate();


  for (int x = 1; x < 7; x++)
  {
    DrawPx(x,7,Dark);      //dark line that goes across the top
    DisplaySlate();
    delay (50);
  }
  
    DrawPx(7,7,Dark);      //Another dot in the top left corner
    DisplaySlate();
   
   
  for (int y = 6; y > 0; y--)
  {
    DrawPx(7,y,Dark);          
    DisplaySlate();
    delay (50);
  }
    
    DrawPx(7,0,Dark);
    DisplaySlate();        //Yet another dark dot
   
   
  for (int z = 6; z > 0; z--)
  {
    DrawPx(z,0,Dark);    //dark (but it looks orange) line scoots across the bottom
    DisplaySlate();
    delay(50);
  }
  
  DrawPx(0,0,Dark);
  DisplaySlate();
  
  for (int w = 6; w > 0; w--)
  for (int h = 6; h > 0; h--)
  
  {
    DrawPx(w,h,Dark);
    DisplaySlate();
    delay(25);
  }
 
   
}

