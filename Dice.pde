

void setup()
{
	size(300,300);
	noLoop();
}
void draw()
{
	background(255);
	Die jeremy = new Die(150, 150);
	jeremy.roll();
	jeremy.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dieX, dieY, sampleRoll;
	Die(int x, int y) //constructor
	{
		dieX = x;
		dieY = y;
	}
	void roll()
	{
		sampleRoll = (int)(Math.random()*6+1);
	}
	void show()
	{
		rect(dieX - 25, dieY - 25, 50, 50);
		if (sampleRoll == 1) {
			ellipse(dieX, dieY, 10, 10);
		} else if (sampleRoll == 2) {
			ellipse(dieX - 12, dieY + 12, 10, 10);
			ellipse(dieX + 12, dieY - 12, 10, 10);
		} else if (sampleRoll == 3) {
			ellipse(dieX, dieY, 10, 10);
			ellipse(dieX - 12, dieY + 12, 10, 10);
			ellipse(dieX + 12, dieY - 12, 10, 10);
		} else if (sampleRoll == 4) {
			ellipse(dieX + 12, dieY + 12, 10, 10);
			ellipse(dieX - 12, dieY - 12, 10, 10);
			ellipse(dieX - 12, dieY + 12, 10, 10);
			ellipse(dieX + 12, dieY - 12, 10, 10);
		} else if (sampleRoll == 5) {
			ellipse(dieX + 12, dieY + 12, 10, 10);
			ellipse(dieX - 12, dieY - 12, 10, 10);
			ellipse(dieX - 12, dieY + 12, 10, 10);
			ellipse(dieX + 12, dieY - 12, 10, 10);
			ellipse(dieX, dieY, 10, 10);
		} else {
			ellipse(dieX + 12, dieY + 12, 10, 10);
			ellipse(dieX - 12, dieY - 12, 10, 10);
			ellipse(dieX - 12, dieY + 12, 10, 10);
			ellipse(dieX + 12, dieY - 12, 10, 10);
			ellipse(dieX - 12, dieY, 10, 10);
			ellipse(dieX + 12, dieY, 10, 10);
		}
 	}
}
