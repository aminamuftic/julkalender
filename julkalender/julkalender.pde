PImage backGround;
PFont font;
PImage tryffel;
PImage ischoklad;
PImage kottbullar;
PImage revbenspjall;
PImage knack;
PImage skinka;
PImage smorkola;
PImage rockyroad;
PImage brunkal;
PImage gronkal;
PImage fudge;
PImage saffranscupcake;
PImage ragsurr;
PImage sprodapepparkakor;
PImage fikon;
PImage cinnamonchip;

void setup() {
  font = createFont("american typewriter",40);
  textFont(font);
  backGround = loadImage("bakgrund.jpg");
  tryffel = loadImage("tryffel.jpg");
  ischoklad = loadImage("ischoklad.jpg");
  kottbullar = loadImage("kottbullar.jpg");
  revbenspjall = loadImage("revbenspjall.jpg");
  knack = loadImage("knack.jpg");
  skinka = loadImage("skinka.jpg");
  smorkola = loadImage("smorkola.jpg");
  rockyroad = loadImage("rockyroad.jpg");
  brunkal = loadImage("brunkal.jpg");
  gronkal = loadImage("gronkal.jpg");
  fudge = loadImage("fudge.jpg");
  saffranscupcake = loadImage("saffranscupcake.jpg");
  ragsurr = loadImage("ragsurr.jpg");
  sprodapepparkakor = loadImage("sprodapepparkakor.jpg");
  fikon = loadImage("fikon.jpg");
  cinnamonchip = loadImage("cinnamonchip.jpg");
  
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