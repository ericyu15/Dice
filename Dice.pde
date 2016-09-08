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
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
		rect(150,150,10,10);
		fill(255);
		ellipse(150,150,1,1);
	}
}
