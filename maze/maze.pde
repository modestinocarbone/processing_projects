PImage img1,img2,img3, img4,img5,img6;
int[][] mat= new int[8][8];


void setup(){
 size(500,500);
 img1 = loadImage("none.png");
 img2 = loadImage("line.png");
 img3 = loadImage("curve_1.png");
 img4 = loadImage("curve_2.png");
 img5 = loadImage("curve_3.png");
 img6 = loadImage("curve_4.png");
}

void draw(){
   background(0);
   float tilesX = 4;
   float tilesY = tilesX;
   float tilesW = width/tilesX;
   float tilesH = height/tilesY;
   int r;

  if(mouseX < width/2){
      if(mouseY < height/2){
        r=2;
      }else{
        r=3;
      }
   }else{
       if(mouseY < height/2){
         r=5;
       }else{
         r=4;
         }
   }

 for(int x=0;x<tilesX;x++){
   for(int y=0;y<tilesY;y++){
   mat[x][y]=r;  
   }
 }
   
 
 
 for(int x=0;x<tilesX;x++){
   for(int y=0;y<tilesY;y++){
    float posX = tilesW * x;
    float posY = tilesH * y; 
    if(mat[x][y] == 0)image(img1, posX,  posY, tilesW, tilesH);
    if(mat[x][y] == 1)image(img2, posX,  posY, tilesW, tilesH);
    if(mat[x][y] == 2)image(img3, posX,  posY, tilesW, tilesH);
    if(mat[x][y] == 3)image(img4, posX,  posY, tilesW, tilesH);
    if(mat[x][y] == 4)image(img5, posX,  posY, tilesW, tilesH);
    if(mat[x][y] == 5)image(img6, posX,  posY, tilesW, tilesH);
    noFill();
    square(posX,posY,tilesH);
    stroke(255);
     } 
   }
 
  
}
