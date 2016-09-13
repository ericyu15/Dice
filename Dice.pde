Die one;
void setup()
{
	size(300,300);
	noLoop();
	one = new Die (150,150);
}
void draw()
{
	//your code here
	one.roll();
	one.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, dieNum;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
		dieNum = (int)(Math.random()*6)+1;
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX,myY,50,50);
		
		if(dieNum == 1)
		{
			fill(0);
			ellipse(myX + 25,myY + 25,10,10);
		}
		
		if(dieNum == 2)
		{
			fill(0);
			ellipse(myX + 12.5,myY + 25,10,10);
			ellipse(myX + 37.5,myY + 25,10,10);
		}

		if(dieNum == 3)
		{
			fill(0);
			ellipse(myX + 25,myY + 14,10,10);
			ellipse(myX + 12.5, myY + 35,10,10);
			ellipse(myX + 39,myY + 35,10,10);
		}

		if(dieNum == 4)
		{
			fill(0);
			ellipse(myX + 12.5,myY + 12.5,10,10);
			ellipse(myX + 37.5,myY + 12.5,10,10);
			ellipse(myX + 12.5,myY + 37.5,10,10);
			ellipse(myX + 37.5,myY + 37.5,10,10);
		}

		if (dieNum == 5)
		{
			fill(0);
			ellipse(myX + 11,myY + 12,10,10);
		}
	}
}
