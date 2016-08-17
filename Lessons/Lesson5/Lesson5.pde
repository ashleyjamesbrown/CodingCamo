// #codingcamo workshop
// ashley james brown
// 2016

//images

PImage img;

float r=255;
float g=255;
float b=255;


void setup() {
  size(800, 600);
  background(0);
  //drag our image into the sketch
  //using load we can store the image into or pimage variable for use in the sketch
  img = loadImage("emojiSmile.png");
 
}

void draw() {
  //draw our image to the screen
  image(img,0,0);
  
  //why not use mousex and mousey so we can draw with our image
  image(img,mouseX,mouseY);
 
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