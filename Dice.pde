Die one;
void setup()
{
	size(250,300);
	noLoop();
	noStroke();
}
void draw()
{
	//your code here
	int sum = 0;
	background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	for(int y = 30; y <= 190; y = y + 70)
	{
		for(int x = 30; x <= 170; x = x + 70)
		{
			one = new Die(x,y);
			one.roll();
			one.show();
			sum = sum + one.dieNum;
		}
	}
	textSize(20);
	text("Total:" + sum, 80,270);
	//if (sum > 35) <<< needs work
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
		rect(myX,myY,50,50,15);

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
			ellipse(myX + 25,myY + 25,10,10);
			ellipse(myX + 11,myY + 38,10,10);
			ellipse(myX + 38,myY + 11,10,10);
			ellipse(myX + 38,myY + 38,10,10);
		}

		if(dieNum == 6)
		{
			fill(0);
			ellipse(myX + 11,myY + 12,10,10);
			ellipse(myX + 11,myY + 25,10,10);
			ellipse(myX + 11,myY + 38,10,10);
			ellipse(myX + 38,myY + 11,10,10);
			ellipse(myX + 38,myY + 25,10,10);
			ellipse(myX + 38,myY + 38,10,10);
		}
	}
}
