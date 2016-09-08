 //declare bacteria variables here
  void setup()   
 {     
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	 Bacteria [] colony = new Bacteria[10];
 	 for(int i = 0; i < colony.length(); i++)
 	 {
 	 	colony[i] = new Bacteria()
 	 }
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria(x, y)
 	{
 		myX = x;
 		myY = y;
 		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
 	}

 	void move()
 	{
 		x = x + (int)(Math.random()*5)-2;
 		y = y + (int)(Math.random()*5)-2;
 	}

 	void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX, myX, 5, 4);
 	}
 }    