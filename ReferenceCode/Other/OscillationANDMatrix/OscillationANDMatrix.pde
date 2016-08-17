float pulse;
float pulseStep;
float pulseLimit = 200;

void setup() {
  size (800, 600);
  background(0);
}

void draw() {
  //background(0);

  pulse = sin(pulseStep)*pulseLimit;
  fill(pulse, 255, 255-pulse);

  pushMatrix();
  translate(width/2, height/2);
  rotate(pulse/20);
  ellipse(0, pulse, 100-pulse, 100+pulse);

  popMatrix();
  pulseStep += 0.02;
}

void keyPressed() {
  saveFrame("mypicture-###.jpg");
}