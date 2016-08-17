// #codingcamo workshop
// ashley james brown
// 2016


//image pixel swap about

PImage img;

void setup() {
  size(1280, 320);
  img = loadImage("moonwalk.jpg");
  background(0);
  //noLoop();
}

void draw() {
  background(0);
  noFill();
  image(img, 0, 0);

  img.loadPixels();
  //noFill();
  //stroke(255);
  //rect(mouseX-50,mouseY-50,100,100);

  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++) {
      int loc = x + y*img.width;  // Pixel array location
      color c = img.pixels[loc];       // Grab the color  

      //new random place for the pixel
      //just y axis differing by 20 pixels from its start
      //add random value to original
      //move x over by 640 so its the half of the screen
      float ry = random(-20, 20);
      set(640+x, y+int(ry), c);
    }
  }


  img.updatePixels();
}