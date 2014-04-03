#include <MeggyJrSimple.h>

void setup()
{
  MeggyJrSimpleSetup();
}

byte a;

void loop()
{
  ClearSlate();
  
  for (int i = 1; i < 7; i++)
//  for (int p = 1; p < 7; p++
  
  {
    DrawPx(0,i,Red);          //A red line that climbs up the side
    DisplaySlate();
    delay (50);
    
    DrawPx(i,1,a);
    a+3;
    DrawPx(i,2,a);
    a+3;
    DrawPx(i,3,a);
    a+3;
    DrawPx(i,4,a);
    a+3;
    DrawPx(i,5,a);
    a+3;
    DrawPx(i,6,a);
    a+3;
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
    
    DrawPx(6,x,a);
    a++;
    DrawPx(5,x,a);
    a++;
    DrawPx(4,x,a);
    a++;
    DrawPx(3,x,a);
    a++;
    DrawPx(2,x,a);
    a++;
    DrawPx(1,x,a);
    a++;
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
    
    DrawPx(6,y,a);
    a++;
    DrawPx(5,y,a);
    a++;
    DrawPx(4,y,a);
    a++;
    DrawPx(3,y,a);
    a++;
    DrawPx(2,y,a);
    a++;
    DrawPx(1,y,a);
    a++;
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
    
    DrawPx(1,z,a);
    a++;
    DrawPx(2,z,a);
    a++;
    DrawPx(3,z,a);
    a++;
    DrawPx(4,z,a);
    a++;
    DrawPx(5,z,a);
    a++;
    DrawPx(6,z,a);
    a++;
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

