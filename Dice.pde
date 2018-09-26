void setup()
{
  size(300, 310);
  noLoop();
}
void draw()
{
  //your code here
  for (int y = 10; y <=300; y = y+50)
  {
    for (int x = 10; x <= 300;x = x + 60)
    {
      Die bob = new Die(x, y);
      bob.show();
    }
  }
}   

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
    if(Math.random() .16)
    
  }
  void show()
  {
    //your code here
    fill(255, 0, 0);
    rect(myX, myY, 40, 40);
  }
}
