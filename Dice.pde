Die dice1;

void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	background(120,92,171);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int value;
	int myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		value = (int)(Math.random()*10);
		myX = x;
		myY = y;
	}
	void roll()
	{
		dice.roll();
		//your code here
		if (Math.random() == 0)
		{
			text("ONE",myX,myY);
		}

	}
	void show()
	{
		dice1.show();
		//your code here
		fill(171,120,92);
		rect(myX,myY,50,50);
	}
}
