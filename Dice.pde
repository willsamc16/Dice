Die dice1;
Die dice2;

void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	background(120,92,171);
	dice1 = new Die(15,15);
	dice1.show();
	dice2 = new Die(100,100);
	dice2.show();

	background(120,92,171);
		for(int i = 13; i < 400; i = i + 100)
		{
			noStroke();
			fill(171,120,92);
			rect(i,10,75,75,10);
		}
		for(int i = 13; i < 400; i = i + 100)
		{
			noStroke();
			fill(171,120,92);
			rect(i,105,75,75,10);
		}

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
		roll();
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		value = (int)(Math.random()*(6)+1);
		//your code here
		// if (int)(Math.random()*6) == )
		// {
		// 	fill(171,160,92);
		// 	ellipse(myX,myY,100,100);
		// }

	}
	void show()
	{
		//your code here
		
		if (value == 1)
		{
			fill(171,160,92);
			ellipse(50, 50, 15, 15);
		}
		if (value == 2)
		{
			fill(171,160,92);
			ellipse(myX, myY, 100, 100);
		}
	}
}
