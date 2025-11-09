/*
 *
 *  Project name:  'attractors.pde'
 *  Author: Modestino Carbone
 *  Note: This program display attractors,
 *  Only Lorenz attractor was implemented,
 *  future attractors will be integrated soon.
 *
 */
 
// change this line to change example
int frame; 
Lorenz lor; 

void setup() {
  size(800, 800);
  background(32);
  lor = new Lorenz(10, 28, 8.0/3.0, 0.02);
}

void draw() {
  translate(width/2, height/5);
  lor.drw();
  
  // Stop frame control loop
  if(frame > 5000){
    frame=0;
    noLoop();  
  }
  frame++;
}


class Lorenz { 
  
  float sigma;
  float ro;
  float beta;
  float x,y,z;
  float dt;
  
  // constructor
  Lorenz (float s, float r, float b, float res) {
     sigma = s;
     ro = r;
     beta = b;
     // starting point
     dt = res;
     x = 0.01;
     y = 0;
     z = 0;
  } 
  
  // draw method
  void drw() { 
     float x_new = x;
     float y_new = y;
     float z_new = z;
     
     x_new += (sigma*(y-x))*dt;
     y_new += (ro*x-x*z-y)*dt;
     z_new += (y*x-beta*z)*dt;
     
     stroke(255);
     
     line(x*10, z*10, x_new*10, z_new*10);
     
     x = x_new;
     y = y_new;
     z = z_new;
  }
  
} 
