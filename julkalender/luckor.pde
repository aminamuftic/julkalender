String [][] siffror;

int [][] siffrorPos;

void boxsiffror(){
  int yPos = 50;
int xPos = 50;
  
 siffrorPos = new int [25][2];
 
 for (int i = 1; i < siffrorPos.length ; i = i + 1) {
   
   text(i, xPos+40, yPos+65);
   
    siffrorPos[i][0] = xPos;
    siffrorPos[i][1] = yPos;
   
   xPos = xPos + 120;
    if (xPos + 50 > width) {
      xPos = 50;
      yPos = yPos + 120;
    }
  }
 }