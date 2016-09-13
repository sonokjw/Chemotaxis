 //declare bacteria variables here
Bacteria [] colony;
int ran1;
int ran2;

  void setup()
 {     
 	//initialize bacteria variables here   
 	size(500, 500);
 	colony = new Bacteria[20];
 	for(int i = 0; i < colony.length; i++)
 	 {
 	 	colony[i] = new Bacteria((int)(Math.random()*300)+100, (int)(Math.random()*300)+100);
 	 }
 }
void draw()   
{	
 	background(255);
 	//move and show the bacteria
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].show();
 		colony[i].move();
 		colony[i].mood();
 	}
}

void mousePressed()
{
	redraw();
}

 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor, moodnum;
 	Bacteria(int x, int y)
 	{
 		myX = x; 
 		myY = y;
 		moodnum = (int)(Math.random()*4)+1;
 		myColor = color((int)(Math.random()*250), (int)(Math.random()*256), (int)(Math.random()*256));
 	}

 	void move()
 	{
 			if(moodnum == 1 || moodnum == 4)
 			{
 				if(mouseX > myX)
 				{
 					ran1 = (int)(Math.random()*5)-1;
 				}
 				else if(mouseX < myX)
 				{
 					ran1 = (int)(Math.random()*5)-3;
 				}
 				else {
 					ran1 = (int)(Math.random()*3)-1;
 				}

 				if(mouseY > myY)
 				{
 					ran2 = (int)(Math.random()*5)-1;
 				}
 				else if(mouseY < myY)
 				{
 					ran2 = (int)(Math.random()*5)-3;
 				}
 				else {
 					ran2 = (int)(Math.random()*3)-1;
 				}

 				myX = myX + ran1;
	 			myY = myY + ran2;
 			}

 			else {
 				ran1 = (int)(Math.random()*5)-2;
	 			ran2 = (int)(Math.random()*5)-2;
	 			myX = myX + ran1;
	 			myY = myY + ran2;
 			}
 	}

 	void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX, myY, 10, 8);
 	}
 	
 	void mood()
 	{
 		if(mouseX >= myX-15 && mouseX <= myX+15 && mouseY >= myY-15 && mouseY <= myY+15)
 		{
 			noStroke();
 			fill(myColor);
 			if(moodnum == 1) //happy
 			{
 				ellipse(myX, myY, 20, 20);
 				fill(0);
 				strokeWeight(3);
 				stroke(255);
 				point(myX-3, myY-3); //left
 				point(myX+3, myY-3); //right
 				noFill();
 				strokeWeight(2);
 				arc(myX, myY, 10, 10, PI/6, 5*PI/6);
 			}
 			else if (moodnum == 2) //sad
 			{
 				ellipse(myX, myY, 20, 20);
 				fill(0);
 				strokeWeight(3);
 				stroke(255);
 				point(myX-3, myY-3); //left
 				point(myX+3, myY-3); //right
 				noFill();
 				strokeWeight(1);
 				arc(myX, myY+10, 18, 13, 8*PI/6, 10*PI/6);
 			}
 			else if (moodnum == 3) //so-so
 			{
 				ellipse(myX, myY, 20, 20);
 				strokeWeight(2);
 				stroke(255);
 				point(myX-3, myY-3); //left
 				point(myX+3, myY-3); //right
 				strokeWeight(2);
 				line(myX-3, myY+3, myX+3, myY+3);
 			}
 			else { // laugh
 				ellipse(myX, myY, 20, 20);
 				strokeWeight(1);
 				stroke(255);
 				arc(myX-4, myY-1, 4, 3, 7*PI/6, 11*PI/6);
 				arc(myX+4, myY-1, 4, 3, 7*PI/6, 11*PI/6);
 				fill(255);
 				noStroke();
 				arc(myX, myY +2, 8, 8, 0, PI);

 			}
 		}
 	}
}
