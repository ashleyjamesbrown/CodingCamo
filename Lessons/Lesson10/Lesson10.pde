// #codingcamo workshop
// ashley james brown
// 2016

//opencv facetracking

//import the opencv and video library
import gab.opencv.*;
import processing.video.*;

//manually type the below to pull in from java itself
import java.awt.Rectangle;

//global variables
Capture cam;
OpenCV opencv;
Rectangle[] faces;

PImage overlay;

float r=255;
float g=255;
float b=255;


void setup() {
  size(800, 600, P2D);
  background(0);
  
  //we need to drag our image into the sketch first
  //thenw e can loadImage into our PImage variable so we can use it in processing
  overlay = loadImage("emojiSmile.png");
  
  //whenever we need to use the camera we must initilaise and start it
  cam = new Capture(this,640,320);
  cam.start();

  //load opencv and create it the same size as our camera
  //load the frontface detcetion algorithm
  opencv = new OpenCV(this, cam.width,cam.height);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
}

void draw() {
  //pass the opencv the info from the cmaera
  opencv.loadImage(cam);
  //run face detect and any it finds put into the faces array
  faces = opencv.detect();
 //display the camera image as is (not the opencv version passed from the camera)
  image(cam,0,0);
 
 //ok we need to check firstly is there any faces
 if (faces!=null){
   //ok so there is 1 or many faces so lets go through the list
   //usign a for loop with i as our iterator or current number in the sequence
   
  for (int i=0; i < faces.length; i++){
   noFill();
   stroke(255,0,0);
   //we can grab the details fo the face held in the array
   //we can get an x and y position of the top corner and we can get a width and height of the face detected
   //using that we can draw a rect
   rect(faces[i].x,faces[i].y,faces[i].width,faces[i].height);
   //or as we now how to display an image
   //we can put our image at the same space as the face !!!!
   //instant camo
   image(overlay,faces[i].x,faces[i].y,faces[i].width,faces[i].height);
  }
 }
 
}

void keyPressed() {
  if (key=='s') {
    saveFrame("mypicture-###.jpg");
  } else if (key=='r') {
    randomColours();
  }
}

void randomColours() {
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
}

//you must muts type this in
//this fucntion listens for the camera and it passes it into the image buffer
//without this the above code to display the cmaera image - image(cam,0,0) will be blank

void captureEvent(Capture cam){
 cam.read(); 
}