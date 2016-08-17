// #codingcamo workshop
// ashley james brown
// 2016


//image pixel rearrange
//take a square of pixels and put it somewhere else
//a little bit of random within puts it in the same place but slightly shuffled
//a nice algorithm for mxing up an image


PImage img;

void setup() {
  size(1280, 320);
  img = loadImage("moonwalk.jpg");
  background(0);
  //noLoop();
}

void draw() {
  //  background(0);
  noFill();
  image(img, 0, 0);

  img.loadPixels();
  //noFill();
  //stroke(255);
  //rect(mouseX-50,mouseY-50,100,100);

  //lets pick some initial locations
  //lets also pick some detsination locations
  int x1 = (int) random(0, width);
  int y1 = (int) random(0, height);
  int x2 = x1+ (int) random(-10, 10);
  int y2 = y1+ (int) random(-10, 10);

  //copy is the command to take a section of pxiels and put it somewhere else

  copy(x1, y1, 50, 50, x2+640, y2, 50, 50);

  img.updatePixels();
}