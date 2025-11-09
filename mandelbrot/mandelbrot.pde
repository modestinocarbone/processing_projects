

int[] red=new int[255];
int[] green=new int[255];
int[] blue=new int[255];


void setup(){

  size(1000,900);
  //(-2.00, 0.47)
  //(-1.12, 1.12)
  background(255);
  
  int r=255,g=0,b=0; //rosso
  
  for(int i=0;i<255;i++){
  
  if(i<=51){g=g+5;}
  
  if(i>51 && i<=102){r=r-5;}
  
  if(i>102 && i<=153){b=b+5;}
  
  if(i>153 && i<=204){g=g-5;}
  
  if(i>204){r=r+5;}
  
  red[i]=r;
  green[i]=g;
  blue[i]=b;
  
  }
  
  //draw_one();

  
}

void draw(){
  int k=0;
  int[][] inten = new int[2*width][2*height];
  
  //float k = 0;
  
  for (int i = 0; i < 2*width; i++) {
    for (int j = 0; j < 2*height; j++) {
      // k = k + (float) 255/( height*width );
      inten[i][j] = 0;
      float x0 = map(i, 0, 2*width,-2.00, 0.47);
      float y0 = map(j, 0, 2*height,-1.12, 1.12);
      float x=0;
      float y=0;
      while(x*x+y*y < 4 && inten[i][j] < 1000 ){
        float temp = x*x - y*y + x0;
        y = 2*x*y + y0;
        x=temp;
        inten[i][j]++;
      }
    }
  }
  int tmp=0;
  for (int i = 0; i < 2*width; i++) {
    for (int j = 0; j < 2*height; j++) {
    if(tmp<inten[i][j])tmp=inten[i][j];
    }
  }
  
  for (int i = 0; i < 2*width; i++) {
    for (int j = 0; j < 2*height; j++) {
      inten[i][j]= (int) map(inten[i][j], 0, tmp,0, 254);
     }
  }
  
  draw_mand(inten);
  String filename = "frames/fract.png";
  saveFrame(filename);

}


void draw_mand(int intensity[][]){

  for(int i=0;i<2*width;i++){
    for(int j=0;j<2*height;j++){
      noStroke();
      //fill(red[intensity[i][j]] ,green[intensity[i][j]], blue[intensity[i][j]]);
      fill(intensity[i][j]);
      circle(i/2,j/2,0.5);
    }
  }

}
