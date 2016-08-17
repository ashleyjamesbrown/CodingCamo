// #codingcamo workshop
// ashley james brown
// 2016

//using roi an inbuilt opencv function

// Now we need the video library
import processing.video.*;

// Import the library
import gab.opencv.*;

// We need Java rectangles
import java.awt.Rectangle;

// Library object
OpenCV opencv;

// Capture object
Capture cam;

// Array of faces found
Rectangle[] faces;

int xpos=100, ypos=100, fsize=0;

void setup() {
  size(640, 240);

  // Start capturing
  cam = new Capture(this, 320, 240);
  cam.start();

  // Create the OpenCV object
  opencv = new OpenCV(this, cam.width, cam.height);

  // Which "cascade" are we going to use?
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  //opencv.loadCascade(OpenCV.CASCADE_EYE);  
  //opencv.loadCascade(OpenCV.CASCADE_NOSE);
}


// New images from camera
void captureEvent(Capture cam) {
  cam.read();
}


void draw() {
  // background(0);


  // We have to always "load" the camera image into OpenCV 
  opencv.loadImage(cam);
  // Draw the video
  image(cam, 0, 0);




  // Detect the faces
  faces = opencv.detect();





  // If we find faces, draw them!
  if (faces != null) { 
    for (int i = 0; i < faces.length; i++) {
      strokeWeight(2);
      stroke(255, 0, 0);
      noFill();
      rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
      //pass position data into gloval vars
      xpos = faces[i].x;
      ypos = faces[i].y;
      fsize = faces[i].width;
    }
  }

  //read global vars and apply roi
  //will only work with one face as this isnt an array
  opencv.setROI(xpos, ypos, fsize, fsize);
  opencv.findCannyEdges(20, 75);
  image(opencv.getOutput(), 320, 0);
  opencv.releaseROI();
}