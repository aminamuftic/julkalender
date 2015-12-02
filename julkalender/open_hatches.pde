boolean isClickOnBox1 = false;

int box = 100;
int yPos = 50;
int xPos = 50;

boolean isClickOnBox (int xStart, int yStart, int _width, int _height) {
  if (mouseX > xStart && mouseX < xStart + _width && mouseY > yStart && mouseY < yStart + _height) {
    return true;
  } else {
    return false;
  }
}
void mouseClicked () {

  if (isClickOnBox (xPos, yPos, box, box) == true) {
    println("god jul");
  }
}