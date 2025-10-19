/*
Bela Julesz

Author: Modestino Carbone

*/
final int x_len = 50;
final int y_len = 50;
boolean[][] mat;

void setup() {
  size(800, 800);
  background(32);
  
  mat = new boolean[x_len][y_len];
  for(int i=0; i<x_len; i++){
      for(int j=0; j<y_len; j++){
         mat[i][j] = boolean(int(random(0,2)));
      }
  }
}

void draw() {

  for(int i=1; i<x_len-1; i++){
      for(int j=1; j<y_len-1; j++){
         if ((mat[i][j] == mat[i+1][j+1] & mat[i][j] == mat[i-1][j-1]) | (mat[i][j] == mat[i-1][j+1] & mat[i][j] == mat[i+1][j-1]) ){
           mat[i][j] = !mat[i][j];
         }
      }
  }
  
  // Print 
  for(int i=0; i<x_len; i++){
      for(int j=0; j<y_len; j++){
         if( mat[i][j]){
          float r = min(height/y_len,width/x_len);
          noStroke();
          circle(i*width/x_len+r/2, j*height/y_len+r/2, r);
        }
      }
  }
  
}
