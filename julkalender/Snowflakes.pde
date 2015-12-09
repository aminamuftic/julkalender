//Maxantalet snöflingor på skärmen.
int amount = 300;
float xPos[] = new float[amount];
float yPos[] = new float [amount];
float snowSize[] = new float [amount];
float minSnowSize = 1;
float maxSnowSize = 6;
int direction = 3;

void test() {
  //Detta behöver vara i setup för att det inte ska bli ett överflöd utav snöflingor.
  for (int i = 0; i < amount; i++) {
    xPos[i]= random(0, width);
    yPos[i] = random(0, height);
    snowSize[i] = random(minSnowSize, maxSnowSize);
  }
}


void snowflakes() {

  for (int i = 0; i < xPos.length; i++) {
    fill(255);
    strokeWeight(1.5);
    stroke(232, 232, 232);
    ellipse(xPos[i], yPos[i], snowSize[i], snowSize[i]);
    //gör så att flingorna åker neråt
    yPos[i] +=direction;

    //Ny ellipse skapas när de når maxhöjd och maxbredd.
    if (yPos[i] > height) {
      yPos[i] = 0;
    }
  }
}