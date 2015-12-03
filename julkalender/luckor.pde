String [][] siffror;

int [][] siffrorPos;

void boxsiffror(){
  int yPos = width/16;
int xPos = width/7;
  
 siffrorPos = new int [25][2];
 
 for (int i = 1; i < siffrorPos.length ; i = i + 1) {
   
   textAlign(CENTER);
   text(i, xPos+50, yPos+65);
   
    siffrorPos[i][0] = xPos;
    siffrorPos[i][1] = yPos;
   
   xPos = xPos + width/8;
    if (xPos + width/5 > width) {
      xPos = width/7;
      yPos = yPos + width/8;
    }
  }
 }