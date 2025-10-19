PImage img1,img2,img3,img4,img5;

void setup(){
 size(600,600);
 img5 = loadImage("style2/t5.png");
 img1 = loadImage("style2/t1.png");
 img2 = loadImage("style2/t2.png");
 img3 = loadImage("style2/t3.png");
 img4 = loadImage("style2/t4.png");
 frameRate(5);
}

void draw(){
  
 background(0);
 fill(255);
 noStroke();
 
 float tilesX = 4;
 float tilesY = tilesX;
 
 float tilesW = width/tilesX;
 float tilesH = height/tilesY;
 
 for(int x=0;x<tilesX;x++){
   for(int y=0;y<tilesY;y++){
    float posX = tilesW * x;
    float posY = tilesH * y;
    float r = int(random(1, 6));
    
    if(r == 1)image(img1, posX,  posY, tilesW, tilesH);
    if(r == 2)image(img2, posX,  posY, tilesW, tilesH);
    if(r == 3)image(img3, posX,  posY, tilesW, tilesH);
    if(r == 4)image(img4, posX,  posY, tilesW, tilesH);
    if(r == 5)image(img5, posX,  posY, tilesW, tilesH);
  
   }
 }
 
 saveFrame("./anim/screenshot-####.png");  
 
}
