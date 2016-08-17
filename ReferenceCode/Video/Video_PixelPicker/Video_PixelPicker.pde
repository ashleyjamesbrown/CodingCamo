// #codingcamo workshop
// ashley james brown
// 2016


//image pixel get colour but this time from video

PImage img;


import processing.video.*;

// Capture object
Capture cam;


void setup() {
  size(1280, 320);
  img = loadImage("moonwalk.jpg");
  background(0);
  
   // Start capturing
  cam = new Capture(this, 640, 320);
  cam.start();
}

void draw() {
  background(0);
  noFill();
  image(cam, 0, 0);

  cam.loadPixels();
  //noFill();
  //stroke(255);
  //rect(mouseX-50,mouseY-50,100,100);


  int loc = mouseX + mouseY*cam.width;  // Pixel array location
  color c = cam.pixels[loc];       // Grab the color  
  fill(c);
  rect(640, 0, 640, 320);


  cam.updatePixels();
}


// New images from camera
void captureEvent(Capture cam) {
  cam.read();
}