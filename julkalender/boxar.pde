

int[][] myBoxes;
String [] siffror;

void boxes() {
  int xPos = 50;
  int yPos = 50;

  siffror = new String [24];
  myBoxes = new int[24][2];

  for (int i = 0; i < myBoxes.length; i = i + 1) {

    fill(255, 255, 255, 100);
    rect(xPos, yPos, 100, 100, 5);
    myBoxes[i][0] = xPos;
    myBoxes[i][1] = yPos;
    
    xPos = xPos + 120;
    if (xPos + 50 > width) {
      xPos = 50;
      yPos = yPos + 120;
    }
  }
}