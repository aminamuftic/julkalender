//Själva luckorna
int[][] myBoxes;

void boxes() {
  int xPos = width/7;
  int yPos = width/16;

  myBoxes = new int[24][2];

  for (int i = 0; i < myBoxes.length; i = i + 1) {
    fill(255, 255, 255, 100);
    rect(xPos, yPos, width/10, width/10, 5);
    myBoxes[i][0] = xPos;
    myBoxes[i][1] = yPos;

    xPos = xPos + width/8;

    if (xPos + width/7 > width) {
      xPos = width/7;
      yPos = yPos + width/8;
    }
  }
}