PVector [] snowflakes;

<<<<<<< HEAD

void snowFalkes(){
  background(0);
=======
void snowflakes() {
  PVector snowflakes1;
  noStroke();
>>>>>>> origin/master
  fill(250);
  snowflakes = new PVector [100];
  for (int i = 0; i < snowflakes.length; i ++) {
    snowflakes[i] = new PVector ();
    snowflakes[i].x = random(0, width);
    snowflakes[i].y = random(0, height);
  }
  for (int i = 0; i < snowflakes.length; i ++) {
    snowflakes1 = snowflakes[i];
    snowflakes1.x = snowflakes1.x + random(1, 3);
    snowflakes1.y = snowflakes1.y + random(40, 100);
    ellipse(snowflakes1.x, snowflakes1.y, 5, 5);
    if (snowflakes1.y >height) {
      snowflakes1.y = 0;
      snowflakes1.x = random(0, width);
    }
  }
}