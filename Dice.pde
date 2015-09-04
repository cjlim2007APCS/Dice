

void setup()
{
	size(300,350);
	noLoop();
}
int oneCounter = 0;
int twoCounter = 0;
int threeCounter = 0;
int fourCounter = 0;
int fiveCounter = 0;
int sixCounter = 0;
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
	fill(0);
	text("1. "+oneCounter, 0, 325);
	text("2. "+twoCounter, 50, 325);
	text("3. "+threeCounter, 100, 325);
	text("4. "+fourCounter, 150, 325);
	text("5. "+fiveCounter, 200, 325);
	text("6. "+sixCounter, 250, 325);
	fill(255);
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
			twoCounter++;
		} else if (sampleRoll == 3) {
			ellipse(dieX, dieY, 10, 10);
			ellipse(dieX - 12, dieY + 12, 10, 10);
			ellipse(dieX + 12, dieY - 12, 10, 10);
			threeCounter++;
		} else if (sampleRoll == 4) {
			ellipse(dieX + 12, dieY + 12, 10, 10);
			ellipse(dieX - 12, dieY - 12, 10, 10);
			ellipse(dieX - 12, dieY + 12, 10, 10);
			ellipse(dieX + 12, dieY - 12, 10, 10);
			fourCounter++;
		} else if (sampleRoll == 5) {
			ellipse(dieX + 12, dieY + 12, 10, 10);
			ellipse(dieX - 12, dieY - 12, 10, 10);
			ellipse(dieX - 12, dieY + 12, 10, 10);
			ellipse(dieX + 12, dieY - 12, 10, 10);
			ellipse(dieX, dieY, 10, 10);
			fiveCounter++;
		} else {
			ellipse(dieX + 12, dieY + 12, 10, 10);
			ellipse(dieX - 12, dieY - 12, 10, 10);
			ellipse(dieX - 12, dieY + 12, 10, 10);
			ellipse(dieX + 12, dieY - 12, 10, 10);
			ellipse(dieX - 12, dieY, 10, 10);
			ellipse(dieX + 12, dieY, 10, 10);
			sixCounter++;
		}
 	}
}
