// #codingcamo workshop
// ashley james brown
// 2016

//using maths to create oscillation aka nice smooth subtle movemenet of values
//global variables to hold our initial state, a modifier and a limit
float mySize=0;
float mySizeMod=0;
float sizeLimit=200;

float r=255;
float g=255;
float b=255;

//string variable note the captial s, holds text of more than one character
//using the text command we can display this to the screen
String name = "Ashley";

void setup() {
  size(800, 600);
  background(0);
}

void draw() {
  //if we want to rotate we need to remeber we rotate the canvas
  //as we want it to spin in the middle we move canvas to the middle
  //and then we can rotate which takes degrees
  //why dont we use our maths later to smoothly rotate ?
  translate(width/2,height/2);
  rotate(mySize);
  
  //here is the maths equation
  mySize = sin(mySizeMod)*sizeLimit;
  
  //heres what we will show - lets use our sinwave modified variable to
  //alter the size of the text
  //we could use it for colour ? 
  //we could use it for position ?
  
  //one note - if we transl;ate the canvas we of course
  //need to draw whatever at 0,0 which is the top left coridnates
  //but we have mvoed our canvas to the middle so voila we are
  //still in the middle....
  
  fill(r, g, b, 90);
  //fill (mySize,g,b,90);
  //ellipse(width/2+mySize, height/2, mySize, mySize);
  textSize(mySize);
  text(name,0,0);

  //dont forgte our step increment - how big a jump along
  //the awesome never ending sinewave curves
  //just think of dr seuss jumping along
  //higher the number the bigger the leap and the faster it will
  //move through the sinewave sequence
  mySizeMod +=0.02;
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