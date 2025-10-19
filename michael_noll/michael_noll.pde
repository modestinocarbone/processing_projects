/*
 *  Project name:  'michael_noll.pde'
 *  Author: Modestino Carbone
 *  Note: This program is a tribute to Michael Noll famous digital works.
 * 
 *  # USAGE
 *  example:
 *       1. Computer composition with lines.
 *       2. Gaussian-quadratic.
 */
 
// change this line to change example
int example = 1;
float oldx;
float oldy;
int frame; 

void setup() {
  
  size(800, 800);
  background(32);
  frame=0;
  oldx = randomGaussian() * 60;
  oldy = random(0, 400);
  
}

void draw() {
  
  // Computer composition with lines
  if(example == 1){
    Rct rectangle = new Rct();
    translate(width/2, height/2);
    rectangle.drw();
  }
  
  // Gaussian-quadratic
  if(example == 2){
    translate(width/2, height/4);
    float x = randomGaussian() * 60;
    float y = pow(frame,2)%400;
    stroke(255);
    line(x, y, oldx, oldy);
    oldx = x;
    oldy = y;
  }
  
  // Stop frame control loop
  if(frame > 300){
    frame=0;
    noLoop();  
  }
  frame++;
}


class Rct { 
  float x, y, thick;
  boolean orientation;
  float len;
  float s;
  // creation of rectangle
  Rct () {
    x=20;
    y=20;
    while(x*x+y*y>1){
      x = random(-1,1);
      y = random(-1,1);
    }
    thick = 5;
    s = random(1);
    len =  map(s, 0, 1, 5, 40);
    orientation = boolean(int(random(0,2)));
  } 
  // draw method
  void drw() { 
    x = map(x, -1, 1, -200, 200);
    y = map(y, -1, 1, -200, 200);
    noStroke();
    if(orientation)
      rect(x-len/2, y-thick/2, len, thick);
     else
      rect(x-thick/2, y-len/2, thick, len);
  }
} 
