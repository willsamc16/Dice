int totalScore = 0;
Die dice1;

void setup()
{
	size(400,450);
	noLoop();
}
void draw()
{
		background((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		for(int j = 13; j < 400; j += 100)
		{
			for(int i = 13; i < 400; i = i + 100)
			{
			dice1 = new Die(i,j);
			dice1.show();
			totalScore += dice1.value;
			}
		}
	fill(0);
	rect(20,400,360,40,10);
	fill(255);
	textSize(30);
	text("Total:"+ totalScore, 140,430);
	}
void mousePressed()
{
	totalScore = 0;
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

			stroke(255);
			strokeWeight(5);
			fill(0);
			rect(myX,myY,75,75,10);

		if (value == 1)
		{
			fill(0);
			ellipse(myX + 37, myY + 37, 15, 15);
		}
		else if (value == 2)
		{
			ellipse(myX + 20, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 55, 15, 15);
		}
		else if (value == 3)
		{
			ellipse(myX + 20, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 55, 15, 15);
			ellipse(myX + 37, myY + 37, 15, 15);
		}
		else if (value == 4)
		{
			ellipse(myX + 20, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 55, 15, 15);
			ellipse(myX + 20, myY + 55, 15, 15);
		}
		else if (value == 5)
		{
			ellipse(myX + 20, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 55, 15, 15);
			ellipse(myX + 20, myY + 55, 15, 15);
			ellipse(myX + 37, myY + 37, 15, 15);
		}
		else if (value == 6)
		{
			ellipse(myX + 20, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 20, 15, 15);
			ellipse(myX + 55, myY + 55, 15, 15);
			ellipse(myX + 20, myY + 55, 15, 15);
			ellipse(myX + 20, myY + 37, 15, 15);
			ellipse(myX + 55, myY + 37, 15, 15);
		}



	}
}
