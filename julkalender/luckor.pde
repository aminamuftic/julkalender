//Själva luckorna där vi har siffrorna. 
int [] siffrorPos;

void boxsiffror() {
  int yPos = width/16;
  int xPos = width/7;

  siffrorPos = new int [24];

  for (int i = 0; i < siffrorPos.length; i = i + 1) {

    textAlign(CENTER);
    text(i+1, xPos+width/20, yPos+height/9);

    xPos = xPos + width/8;

    if (xPos + width/5 > width) {
      xPos = width/7;
      yPos = yPos + width/8;
    }
  }
}