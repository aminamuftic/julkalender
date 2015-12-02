void setup() {
  size(800, 600);
}


void draw() {
  background(0);
  boxes();
  snowflakes();
  println("X: " +  mouseX + "." + "Y: " + mouseY);
  ellipse(mouseX, mouseY, 20, 20);
noCursor();
  }