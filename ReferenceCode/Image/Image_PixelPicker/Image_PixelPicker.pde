// #codingcamo workshop
// ashley james brown
// 2016


//image pixel get colour

PImage img;

void setup() {
  size(1280, 320);
  img = loadImage("moonwalk.jpg");
  background(0);
}

void draw() {
  background(0);
  noFill();
  image(img, 0, 0);

  img.loadPixels();
  //noFill();
  //stroke(255);
  //rect(mouseX-50,mouseY-50,100,100);


  int loc = mouseX + mouseY*img.width;  // Pixel array location
  color c = img.pixels[loc];       // Grab the color  
  fill(c);
  rect(640, 0, 640, 320);


  img.updatePixels();
}