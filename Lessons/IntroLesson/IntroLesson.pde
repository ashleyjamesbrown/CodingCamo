// #codingcamo workshop
// ashley james brown
// 2016


void setup(){
 //we define our canvas size in pixels
 //later in the code we can refer to width and height as special inbuilt 
 //variables which have the canvas width and height store
  size(800,600);
  
  //we set the background color of the sketch in this case we are using one paraemter
  //0 is black and up to 255 which is white - more on color below
  background(0);
}

void draw(){
 
  
  //fill to put a colour into a shape
  //using r,g,b with values 0 - 255 for example red is fill(255,0,0);
  //final parameter is opacity with 255 as solid and down to 0 for invisible
  //we have taken other data to give us numbers and stored
  //in variables we can call those variables as parameters for colour
  fill(0,255,0,90);
  
  //shapes are drawn using coordinates
  //ellipse(x, y, width, height);
  //rect(x,y,width,height)
  ellipse(width/2,height/2,100,100);
  
  fill(255);
  //using the ibuilt variables taken from the mouse we can apply those
  //to the shapes x and y instead of statically drawing it
  //by aletring the parameter we now have interactivity
  rect(mouseX,mouseY,100,100); 
}