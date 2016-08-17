// #codingcamo workshop
// ashley james brown
// 2016

//global variables at the top
//these allow any part of the sketch to access and alter those aka read and write to the variable

float x=0;
float y=0;
int dir=1;

//will use these to store values randomly and then apply them to a colour
float r=255;
float g=255;
float b=255;


void setup() {
  size(800, 600);
  background(0);
}

void draw() {
  
 // background(0);
  
  // movement using conditionals
  // every time draw runs (30 times a second) the if is run
  // because of this we need two rules 
  // our first rule is used as a flag / toggle/ switch/ yesNo
  // it constantly checks the x value store to see if its bigger than the screen
  // or if it is less than the screen width.
  // by doing this it can assign a number of 0 or 1
  
  
  if (x>width) {
    dir=0;
  } else if (x<0) {
    dir=1;
    randomColours();
  }
  
  // our second set of conditionals
  // this rule reads the valueset in the above rule
  // if its a 1 then we are going to icnrease our x value
  // thereby making the shape 'move' to the right
  // if its a 0 then we are goignt od ecrease our x value
  // thereby makign the shape 'move' to the left

  if (dir==1) {
    x+=5;
  } else {
    x-=5;
  }
  
  // we need the first rule becuase otherwise our check would constantly
  // alter and our shape would not move
  
  // think of them as logic questions that we are asking of the x variable
  
  
  y+=random(-5,5);
  noStroke();
  fill(r, g, b, 35);
  ellipse(x, y, 100, 100);
  
  //tip for making a movie
  //at the end of the draw put in the saveframe command and an image
  //is saved 30 times a second
  //afterards use the Tools->MovieMaker to grab the folder of images and tunr them into a move
  //using our autonumber hack puts them in sequence already
  //saveFrame("movie/img-###.jpg");
}

//learnign about if conditionals means we can apply some more control
//inside our keypressed
//this enables us to only run a command on a specific key

void keyPressed() {
  if (key=='s'){
   saveFrame("mypicture-###.jpg");
  } else if (key=='r'){
   randomColours();
  }
}


// our own little function
// we can call this at anytime - from a keypress or every frame in the draw
// 

void randomColours() {
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
}