Die dice1;

void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
		background(120,92,171);
		for(int j = 13; j < 400; j += 100)
		{
			for(int i = 13; i < 400; i = i + 100)
			{
			dice1 = new Die(i,j);
			dice1.show();
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

			noStroke();
			fill(171,120,92);
			rect(myX,myY,75,75,10);

		if (value == 1)
		{
			fill(171,160,92);
			ellipse(myX + 37, myY + 37, 15, 15);
		}
		else if (value == 2)
		{
			fill(171,160,92);
			ellipse(myX + 20, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 55, 15, 15);
		}
		else if (value == 3)
		{
			fill(171,160,92);
			ellipse(myX + 20, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 55, 15, 15);
			ellipse(myX + 37, myY + 37, 15, 15);
		}
		else if (value == 4)
		{
			fill(171,160,92);
			ellipse(myX + 20, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 55, 15, 15);
			ellipse(myX + 20, myY + 55, 15, 15);
		}
		else if (value == 5)
		{
			fill(171,160,92);
			ellipse(myX + 20, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 55, 15, 15);
			ellipse(myX + 20, myY + 55, 15, 15);
			ellipse(myX + 37, myY + 37, 15, 15);
		}
		else if (value == 6)
		{
			fill(171,160,92);
			ellipse(myX + 20, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 55, 15, 15);
			ellipse(myX + 20, myY + 55, 15, 15);
			ellipse(myX + 20, myY + 37, 15, 15);
			ellipse(myX + 55, myY + 37, 15, 15);
		}



	}
}
