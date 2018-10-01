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
		if(myRoll == 1) {
      mySpace = 40;
    } else if (myRoll == 2) {
      mySpace = 20;
    } else if (myRoll == 3){
      mySpace = 10;
    } else if (myRoll == 4){
      mySpace = 10;
    } else if (myRoll == 5){
      mySpace = 10;
    } else {
      mySpace = 10;
    }
  }
      
	
	void show()
	{
    fill(255);
		rect(myX, myY, 80, 80);
    fill(0);
    for(int num = 0; num <= myRoll; num++)
    {
      ellipse(myX + mySpace, myY + mySpace, 10, 10);
    }
    System.out.println(myRoll);
	}
}