float pulse;
float pulseStep;
float pulseLimit = 200;

void setup() {
  size (800, 600);
  background(0);
}

void draw() {
  background(0);

  pulse = sin(pulseStep)*pulseLimit;
  fill(255, 255, 255);

  ellipse(width/2, height/2, pulse, pulse);

  pulseStep += 0.02;
}

void keyPressed() {
  saveFrame("myiamge-###.jpg");
}