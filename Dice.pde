void setup()
{
	noLoop();
  size(500, 500);
}
void draw()
{
  background(51);
	Die bob1 = new Die(100, 100);
  bob1.show();
  Die bob2 = new Die(200, 100);
  bob2.show();
  Die bob3 = new Die(300, 100);
  bob3.show();
  Die bob4 = new Die(100, 200);
  bob4.show();
  Die bob5 = new Die(200, 200);
  bob5.show();
  Die bob6 = new Die(300, 200);
  bob6.show();
  int totalDots = bob1.myRoll + bob2.myRoll + bob3.myRoll + bob4.myRoll + bob5.myRoll + bob6.myRoll;
  textSize(32);
  text("Number of dots: " + totalDots, 100, 450);
}
void mousePressed()
{

	redraw();

}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, myRoll, mySpace;
	Die(int x, int y) //constructor
	{
    myX = x;
    myY = y;
    myRoll = (int)(Math.random()*6)+1;
		//variable initializations here
	}
   
	
	void show()
	{
    fill(255);
		rect(myX, myY, 80, 80);
    fill(0);
    
    if(myRoll == 1) {
        fill(255);
        rect(myX, myY, 80, 80);
        fill(0);
        ellipse(myX + 40, myY + 40, 10, 10);
    } else if (myRoll == 2) {
        fill(255);
        rect(myX, myY, 80, 80);
        fill(0);
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 70, myY + 70, 10, 10);
    } else if (myRoll == 3){
        fill(255);
        rect(myX, myY, 80, 80);
        fill(0);
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 70, myY + 70, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
    } else if (myRoll == 4){
        fill(255);
        rect(myX, myY, 80, 80);
        fill(0);
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 70, 10, 10);
        ellipse(myX + 70, myY + 10, 10, 10);
        ellipse(myX + 70, myY + 70, 10, 10);
    } else if (myRoll == 5){
        fill(255);
        rect(myX, myY, 80, 80);
        fill(0);
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 70, 10, 10);
        ellipse(myX + 70, myY + 10, 10, 10);
        ellipse(myX + 70, myY + 70, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
    } else {
        fill(255);
        rect(myX, myY, 80, 80);
        fill(0);
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 70, 10, 10);
        ellipse(myX + 70, myY + 10, 10, 10);
        ellipse(myX + 70, myY + 70, 10, 10);
        ellipse(myX + 40, myY + 10, 10, 10);
        ellipse(myX + 40, myY + 70, 10, 10);
    }
    
    
	}
}
