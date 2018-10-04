void setup()
{
	noLoop();
  size(500, 500);
}
void draw()
{
	Die bob = new Die(100, 100);
  bob.show();

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
	void roll()
	{
		
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
        ellipse(140, 140, 10, 10);
    } else if (myRoll == 2) {
        fill(255);
        rect(myX, myY, 80, 80);
        fill(0);
        ellipse(110, 110, 10, 10);
        ellipse(170, 170, 10, 10);
    } else if (myRoll == 3){
        fill(255);
        rect(myX, myY, 80, 80);
        fill(0);
        ellipse(110, 110, 10, 10);
        ellipse(170, 170, 10, 10);
        ellipse(140, 140, 10, 10);
    } else if (myRoll == 4){
        fill(255);
        rect(myX, myY, 80, 80);
        fill(0);
        ellipse(110, 110, 10, 10);
        ellipse(110, 170, 10, 10);
        ellipse(170, 110, 10, 10);
        ellipse(170, 170, 10, 10);
    } else if (myRoll == 5){
        fill(255);
        rect(myX, myY, 80, 80);
        fill(0);
        ellipse(110, 110, 10, 10);
        ellipse(110, 170, 10, 10);
        ellipse(170, 110, 10, 10);
        ellipse(170, 170, 10, 10);
        ellipse(140, 140, 10, 10);
    } else {
        fill(255);
        rect(myX, myY, 80, 80);
        fill(0);
        ellipse(110, 110, 10, 10);
        ellipse(110, 170, 10, 10);
        ellipse(170, 110, 10, 10);
        ellipse(170, 170, 10, 10);
        ellipse(140, 110, 10, 10);
        ellipse(140, 170, 10, 10);
    }
    
    /*for(int num = 0; num <= myRoll; num++)
    {
      ellipse(myX + mySpace, myY + mySpace, 10, 10);
    }
    */
    System.out.println(myRoll);
    
	}
}
