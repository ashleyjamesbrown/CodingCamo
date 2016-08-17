// #codingcamo workshop
// ashley james brown
// 2016

//lets go even firther with facetracking
//first grab the image
//track face and pull copy pixels out to enw location
//then pixle shuffle the new location intp the third place


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


PImage c, d;

void setup() {
  size(960, 240); //p2d
  background(0);
  // Start capturing
  cam = new Capture(this, 320, 240);
  cam.start();

  // Create the OpenCV object
  opencv = new OpenCV(this, cam.width, cam.height);

  // Which "cascade" are we going to use?
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  //opencv.loadCascade(OpenCV.CASCADE_EYE);  
  //opencv.loadCascade(OpenCV.CASCADE_NOSE);   

  c = createImage(10, 10, 10);
  d = createImage(10, 10, 10);
}

// New images from camera
void captureEvent(Capture cam) {
  cam.read();
}


void draw() {

  //background(0);

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
      c = get(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
      image(c, 320, 0);

      int x1 = (int) random(320, c.width+320);
      int y1 = (int) random(0, c.height);
      int x2 = x1+ (int) random(-10, 10);
      int y2 = y1+ (int) random(-10, 10);
      copy(x1, y1, 30, 30, x2+320, y2, 30, 30);
    }
  }
}