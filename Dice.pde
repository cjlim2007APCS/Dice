

void setup()
{
	size(300,350);
	noLoop();
}
int oneCounter = 0;
void draw()
{
	background(255);
	for (int y = 25; y<=275; y=y+50) {
		for (int x = 25; x<=275; x=x+50) {
		Die jeremy = new Die(x, y);
		jeremy.roll();
		jeremy.show();
		}
	}
	System.out.println(oneCounter);
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
			oneCounter++;
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
