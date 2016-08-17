float mySize;
float mySizeMod;
float sizeLimit = 200;

void setup() {
  size (800, 600);
}

void draw() {
 // background(0);
 
 
  float r = random(0,255);
  float g = random(0,255);
  float b = random(0,255);
  
  mySize = sin(mySizeMod)*sizeLimit;
  fill(r,g,b,145);
  
  ellipse(width/2, height/2, mySize, mySize);
  mySizeMod += 0.02;



}