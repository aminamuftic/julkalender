PImage backGround;
PFont font;

void setup() {
  font = createFont("american typewriter",40);
  textFont(font);
  backGround = loadImage("bakgrund.jpg");
  tryffel = loadImage("tryffel.jpg");
  size(800, 600);
}


void draw() {
  image(backGround,0,0,width,height);
  boxes();
  snowflakes();
  snowball();
  noCursor();
  mouseClicked();
  fill(250, 0, 0);
  text("1",90,110);
}