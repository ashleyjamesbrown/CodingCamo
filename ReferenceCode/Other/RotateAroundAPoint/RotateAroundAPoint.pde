//PKS year 7 rotate basics


float counter;
float r, g, b; //hold the colour
float wave;


void setup() {
  size(800, 600);
  background(0);
  noStroke();

  // rectMode(CENTER); // puts the x and y as the center ratehr than top left hand corner
  // textSize(1);
}

void draw() {
  //background(0); //will remove ready for art

  counter+=0.02;
  wave = cos(counter) * PI;


  r= random(0, 255);
  g = random(0, 255);
  b= random(0, 255);
  fill(r, g, b, 90); //colour


  translate(width/2, height/2);
  rotate(wave);
  //  fill(random(0,255),90);  //black and white
  
  // rect(0,0, wave*30,wave*30);
  ellipse(0, 0, 80+mouseX, 80+mouseY);  //try ellipse for some word spiral stuff

  textSize(42);
   text("ashley", 0,0);
}


void keyPressed() {
  if (key==' ' ) {
    saveFrame("img-###.jpg");
  }
}