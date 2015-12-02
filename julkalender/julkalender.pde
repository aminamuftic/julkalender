PImage backGround;
PFont font;
PImage tryffel;
PImage ischoklad;
PImage kottbullar;
PImage revbenspjall;
PImage knack;

void setup() {
  font = createFont("american typewriter",40);
  textFont(font);
  backGround = loadImage("bakgrund.jpg");
  tryffel = loadImage("tryffel.jpg");
  ischoklad = loadImage("ischoklad.jpg");
  kottbullar = loadImage("kottbullar.jpg");
  revbenspjall = loadImage("revbenspjall.jpg");
  knack = loadImage("knack.jpg");
  size(800, 600);
}


void draw() {
  image(backGround,0,0,width,height);
  boxes();
  snowflakes();
  snowball();
  noCursor();
  openHatchesTimer();
  displayOpenHatch();
  fill(250, 0, 0);
  text("1",90,110);
}