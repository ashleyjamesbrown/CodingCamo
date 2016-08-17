// #codingcamo workshop
// ashley james brown
// 2016


//image pixel square picker from video

PImage img;


import processing.video.*;

// Capture object
Capture cam;


void setup() {
  size(1280, 320);

  background(0);

  // Start capturing
  cam = new Capture(this, 640, 320);
  cam.start();
}

void draw() {
  background(0);
  noStroke();
  image(cam, 0, 0);
  
  noFill();
  stroke(255);
  rect(mouseX-50, mouseY-50, 100, 100);
  
  
  cam.loadPixels(); 
  PImage n = get(mouseX-50, mouseY-50, 100, 100);
  image(n, 640, 0);
  cam.updatePixels();
}


// New images from camera
void captureEvent(Capture cam) {
  cam.read();
}