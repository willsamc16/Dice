int score = 0;
void setup()
{
  size(420, 500);
  noLoop();
}
void draw()
{
  //your code here
background(255);
  for (int y = 10; y <=400; y = y+50)
  {
    for (int x = 10; x <= 390; x = x + 60)
    {
      Die bob = new Die(x, y);
 
      bob.show();
      bob.roll();
     fill(255);
     rect(30,430,360,40,10);
     fill(0);
     textSize(30);
     score += bob.num;
     
      if (score>210)
      {
    fill(255,234,0);
    ellipse(210,210,200,200);
    fill(0);
    ellipse(160,180,20,20);
    ellipse(250,180,20,20);
    noFill();
    arc(210,200,140,140,PI/8,7*PI/8);
    fill(0);
      }
     
    }
  }
  text("Total " + score, 150,460);
}   

void mousePressed()
{
  
  score = 0;
  
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int num;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
    num = (int)(Math.random()*6 +1);
  }
  void show()
  {
    //your code here20,8,8
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    rect(myX, myY, 40, 40,10);
    if (num==1)
    {
      fill(0);
      ellipse(myX+20, myY+20, 8, 8);
    } else if (num==2)
    { 
      fill(0);
      ellipse(myX+10, myY+30, 8, 8);
      ellipse(myX+30, myY+10, 8, 8);
    } else if (num==3)
    {
      fill(0);
      ellipse(myX+10, myY+30, 8, 8);
      ellipse(myX+30, myY+10, 8, 8);
      ellipse(myX+20, myY+20, 8, 8);
    } else if (num==4)
    {
      fill(0);
      ellipse(myX+10, myY+30, 8, 8);
      ellipse(myX+30, myY+10, 8, 8);
      ellipse(myX+10, myY+10, 8, 8);
      ellipse(myX+30,myY+30,8,8);
    }
    else if(num==5)
    {
      fill(0);
      ellipse(myX+10, myY+30, 8, 8);
      ellipse(myX+30, myY+10, 8, 8);
      ellipse(myX+10, myY+10, 8, 8);
      ellipse(myX+30,myY+30,8,8);
      ellipse(myX+20,myY+20,8,8);
    }
    else if (num==6)
    {
      fill(0);
      ellipse(myX+10, myY+33, 8, 8);
      ellipse(myX+30, myY+8, 8, 8);
      ellipse(myX+10, myY+20,8,8);
      ellipse(myX+10, myY+8,8,8);
     ellipse(myX+30, myY+20, 8, 8);
     ellipse(myX+30, myY+33, 8, 8);
    }
    
    
    }
  }
