// #codingcamo workshop
// ashley james brown
// 2016


void setup(){
  size(800,600);
  background(0);
}

void draw(){
  // float are floating point or decimal numbers
  // random nubers are always decimal and go from a low value to a high value aka random(low,high);
  float r = random(0,200);
  
  //the map function takes a variable and given its min and max we can alter or transpose that to a new min and new max
  //map (variable name, variables min, vairbales max, newmin, new max)
  //its useful when values are not in the range you want and it saves making lots of new variables just for the range
  float x = map(mouseX,0,width,0,255);
  float y = map(mouseY,0,height,0,255);
  
  float red = random(0,255);
  float green= random(0,255);
  float blue = random(0,255);
  
  float rx = random(0,width);
  float ry = random(0,height);
  
  //fill to put a colour into a shape
  //using r,g,b with values 0 - 255 for example red is fill(255,0,0);
  //final parameter is opacity with 255 as solid and down to 0 for invisible
  //we have taken other data to give us numbers and stored
  //in variables we can call those variables as parameters for colour
  fill(red,green,blue,90);
  rect(rx,ry,mouseX,r); 
}


//processing listens to when a key is pressed and then if it is it runs this function
//any code inside will run 

void keyPressed() {
   //using this special -### gives an autonumber so we dont overwrite every time the same file
   saveFrame("mypicture-###.jpg");
}