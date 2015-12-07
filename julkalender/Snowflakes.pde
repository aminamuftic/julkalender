//maximum amount of snowflakes drawn on screen
int amount = 300;
float xPos[] = new float[amount];
float yPos[] = new float [amount];
float direction[] = new float[amount];
float snowSize[] = new float [amount];
float minSnowSize = 1;
float maxSnowSize = 6;

void test() {
  smooth();
  //must be in setup
  for (int i = 0; i < amount; i++) {
    xPos[i]= random(0, width);
    yPos[i] = random(0, height);
    direction[i] = 3;
    snowSize[i] = random(minSnowSize, maxSnowSize);
  }
}


void snowflakes() {
  
  for (int i = 0; i < xPos.length; i++) {
    fill(255);
    strokeWeight(1.5);
    stroke(232, 232, 232);
    ellipse(xPos[i], yPos[i], snowSize[i], snowSize[i]);
    //adds downward direction for yPos
    yPos[i] +=direction[i];
    
    //creates new ellipses when they reach width or height max.
    if (yPos[i] > height) {
      yPos[i] = 0;
    }
    if (xPos[i] < 0) {
      xPos[i] = width;
    }
  }
  
}