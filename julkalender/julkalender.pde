void setup() {
  tryffel = loadImage("tryffel.jpg");
  size(800, 600);
}


void draw() {
  background(0);
  boxes();
  snowflakes();
  ellipse(mouseX, mouseY, 20, 20);
  noCursor();
  mouseClicked();
}