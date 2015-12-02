PImage backGround;
PFont font;

void setup() {
  font = createFont("american typewriter",20);
  textFont(font);
  backGround = loadImage("bakgrund.jpg");
  tryffel = loadImage("tryffel.jpg");
  size(800, 600);
}


void draw() {
  image(backGround,0,0,width,height);
  boxes();
  snowflakes();
  ellipse(mouseX, mouseY, 20, 20);
  noCursor();
  mouseClicked();
  fill(0);
  text("HEJ",75,100);
}