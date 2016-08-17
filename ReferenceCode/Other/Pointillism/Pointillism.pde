
 
 import processing.video.*;
 
 // Capture object
Capture cam;

PImage img;
int smallPoint, largePoint;

void setup() {
  size(640, 240);
 // img = loadImage("moonwalk.jpg");
  smallPoint = 4;
  largePoint = 40;
  //imageMode(CENTER);
  noStroke();
  background(255);
  
   // Start capturing
  cam = new Capture(this, 320, 240);
  cam.start();
}

void draw() { 
  image(cam, 320, 0);
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(cam.width));
  int y = int(random(cam.height));
  color pix = cam.get(x, y);
  fill(pix,255);
  ellipse(x, y, pointillize, pointillize);
}


// New images from camera
void captureEvent(Capture cam) {
  cam.read();
}

void keyPressed(){
  //clear
 background(0); 
}