//declare bacteria variables here   
Bacteria [] x = new Bacteria[50];

void setup()   
{     
  //initialize bacteria variables here 
  size(500, 500);
  background(0);
  for (int i =0; i < x.length; i++)
  {
    x[i]= new Bacteria();
  }
}   
void draw()   
{    
  //move and show the bacteria
  for (int i=0; i<x.length; i++)
  {
    x[i].move();
    x[i].show();
  }
}  
void mousePressed()
{
  background(0);
}
class Bacteria    
{     
  //lots of java!
  int myX, myY, myC;
  Bacteria()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myC = color ((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move ()
  {
    myX = myX+ (int)(Math.random()*7)-3;
    myY= myY + (int)(Math.random()*7)-3;
    if (myX > 500) {
      myX = 500;
    }
    if (myX < 0) {
      myX = 0;
    }
    if (myY > 500)
    {
      myY = 500;
    }
    if (myY < 0)
    {
      myY = 0;
    }
  }
  void show ()
  {
    fill (myC);
    ellipse(myX, myY, 30, 30);
  }
}
