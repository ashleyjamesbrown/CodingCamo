void setup() {
  size(800,600);
  background(0);
  
  
}


void draw() {
  background(0);
  
  for (int i=0; i<255; i++) {
    noStroke();
    //use random to assign colour
    float r = random(0,255);
    float g = random(0,255);
    float b = random(0,255);
    //float o = random(0,255); // maybe even opacity is random
    fill(r,g,b,90); 
    // fill(r,g,b,o);
    ellipse(random(0,width), i*2,mouseX,mouseY);
   // rect(random(0,width), i*2,mouseX,mouseY);
  }
  
}