

int [] myBoxes;
String [] siffror;

void boxes() {
  int xPos = 50;
  int yPos = 50;

  siffror = new String [24];
  myBoxes = new int[24];

  for (int i = 0; i < myBoxes.length; i = i +1) {

    fill(255, 255, 255, 100);
    rect(xPos, yPos, 100, 100, 5);
    xPos = xPos + 120;
    if (xPos + 50 > width) {
      xPos = 50;
      yPos = yPos + 120;
    }
  }
  for (int i = 0; i < siffror.length; i = i + 1) {
    xPos = xPos + 120;
    text(myBoxes[i], 10, 20);
    println(i);
  }
}