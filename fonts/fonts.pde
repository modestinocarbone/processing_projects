PGraphics pg;
PFont font;
int j,k=0;


void setup(){
  font = createFont("Overwave.ttf",600);
  size(800,800,P2D);
  pg = createGraphics(800,800,P2D); 
  frameRate(10);
}

void draw(){
  background(0);
  pg.beginDraw();
  pg.background(0);
  pg.fill(255);
  pg.textFont(font);
  pg.textSize(700);
  pg.pushMatrix();
  pg.translate(width/2, height/2-150);
  pg.textAlign(CENTER,CENTER);
  
  if(k<200){ 
    pg.text("w",0,0);
  }if(k>=200 && k<400 ){ 
    pg.text("a",0,0);
  }if(k>=400){ 
    pg.text("ve",0,0);
  } 
  if(k>600){k=0;}
  
  k=k+10;
  pg.popMatrix();
  pg.endDraw();
  
  int tilesX = 10;
  int tilesY = 10;
  int tileW = int(width/tilesX);
  int tileH = int(height/tilesY);
  
  for(int y=0;y<tilesY;y++){
    for(int x=0;x<tilesX;x++){
    
      int sx = x * tileW + int(20*sin(j));
      int sy = y * tileH + int(20*cos(j));
      int sw = tileW;
      int sh = tileH;
      
      int dx = x * tileW;
      int dy = y * tileH;
      int dw = tileW;
      int dh = tileH;
      
      j++;
      if(j>10)j=0;   
      
      copy(pg, sx,sy,sw,sh,dx,dy,dw,dh);
    }
  } 
  
  
  
}
