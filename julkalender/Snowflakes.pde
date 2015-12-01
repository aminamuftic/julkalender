int xPos = 400;
int yPos = 1;
int myWidth = 5;
int myHeight = 5;


void snowFalkes(){
  background(0);
  boxes(xPos,yPos,0,0,5);
  fill(250);
  ellipse(xPos, yPos, myWidth, myHeight);
    yPos = yPos + 1;
  }