//You should implement your assign3 here.
final int COUNT = 5;
final int GAME_START = 0;
final int GAME_RUN = 1;
final int GAME_OVER = 2;
final int a1 = 3 ;
final int a2 = 4 ;
int gameState;
PImage hp;
PImage enemy;
PImage treasure;
PImage fighter;
PImage bg1;
PImage bg2;
PImage start1 ;
PImage start2 ;
PImage end1 ;
PImage end2 ;
int a ;
int b ;
int b2 ;
int b3 ;
int c ;
int d ;
int e ;
int f ;
int g ;
int h ;
int k ;
int j ;
int x = 550;
int y = 240;
float speed = 5;
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;


void setup(){
  background(0);
  size(640,480);
  
  
  a=0 ;
  b=0 ;
  b2=0;
  b3=0;
  g=40;
  c=floor(random(0,600));
  d=floor(random(0,440));
  e=floor(random(0,420));
  f=floor(random(0,440));
  h=floor(random(0,420));
  k=floor(random(0,120));
  j=floor(random(0,120));
  fill(255,0,0);
  rect(10,10,g,31);
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  enemy=loadImage("img/enemy.png");
  treasure=loadImage("img/treasure.png");
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  start1=loadImage("img/start1.png");
  start2=loadImage("img/start2.png");  
  end1=loadImage("img/end1.png");
  end2=loadImage("img/end2.png");
}
void draw(){
  image(start2,0,0);
    switch (gameState){
    case GAME_START:
  if(mouseX>210 && mouseX<440 && mouseY>380 && mouseY<410){
    if(mousePressed){
          gameState = GAME_RUN;
    }else{
      image(start1,0,0);
    }
  }
  break ;
  case GAME_RUN:
    image(bg1,a-640,0);
  image(bg2,a,0);  
  image(bg1,a+640,0);
  image(bg2,a-1280,0);
  fill(255,0,0);
  rect(15,10,g,31);
  image(hp,10,10);
//  image(enemy,b,e);
  image(treasure,c,d);
  image(fighter,x,y);
  a += 1 ;
  a %= 1280 ;
  b %= 2560 ;
  f %= 440 ;
    if (upPressed) {
    y -= speed;
  }
  if (downPressed) {
    y += speed;
  }
  if (leftPressed) {
    x -= speed;
  }
  if (rightPressed) {
    x += speed;
  }
  if( x <= 0 ){
  x=0;
  }
  if( y <= 0 ){
  y=0;
  }
  if( x >= 590 ){
  x=590; 
  }
  if( y >= 430 ){
  y=430; 
   }

 if(x>=c-45 && x<c+40 && y>=d-45 && y<=d+40){
  c=floor(random(0,600));
  d=floor(random(0,440));
  image(treasure,c,d);   
  g = 40;
  }
   /*if(x>=b-45 && x<b+60 && y>=e-45 && y<=e+60){
  b=0;    
  e=floor(random(0,440));
  image(treasure,b,e);   
  b+=2;
  g -= 40;
  }
  if(g>=200){
    g=200;
  }
  if(e>y){
    e-=2;
  }
  if(e==y){
    b+=3;
  }
  if(e<y){
    e+=2;
  }

  if(g<=0){
    gameState = a1;
  }
    */

float spacingX = width/COUNT;
float  x1 = 0;

for (int i=0; i<COUNT; i++){
   b += 1 ;
  image(enemy,b+x1-640,h);
  x1 += spacingX;

 

 }
 if(b>=1280){
    gameState = a1;
    h=floor(random(0,420));
  }
  break ;
  case a1 :
      image(bg1,a-640,0);
  image(bg2,a,0);  
  image(bg1,a+640,0);
  image(bg2,a-1280,0);
  fill(255,0,0);
  rect(15,10,g,31);
  image(hp,10,10);
//  image(enemy,b,e);
  image(treasure,c,d);
  image(fighter,x,y);
  a += 1 ;
  a %= 1280 ;
  b2 %= 1280 ;
  f %= 440 ;
    if (upPressed) {
    y -= speed;
  }
  if (downPressed) {
    y += speed;
  }
  if (leftPressed) {
    x -= speed;
  }
  if (rightPressed) {
    x += speed;
  }
  if( x <= 0 ){
  x=0;
  }
  if( y <= 0 ){
  y=0;
  }
  if( x >= 590 ){
  x=590; 
  }
  if( y >= 430 ){
  y=430; 
   }
   if(x>=c-45 && x<c+40 && y>=d-45 && y<=d+40){
  c=floor(random(0,600));
  d=floor(random(0,440));
  image(treasure,c,d);   
  g = 40;
  }
   /*if(x>=b-45 && x<b+60 && y>=e-45 && y<=e+60){
  b=0;    
  e=floor(random(0,440));
  image(treasure,b,e);   
  b+=2;
  g -= 40;
  }
  if(g>=200){
    g=200;
  }
  if(e>y){
    e-=2;
  }
  if(e==y){
    b+=3;
  }
  if(e<y){
    e+=2;
  }

  if(g<=0){
    gameState = a1;
  }
    */

float spacingX2 = 60;
float spacingY2 = 60;
float x2 = 0, y12 = 0;

for (int i=0; i<COUNT; i++){
      b2 += 1 ;
  x2 = i*spacingX2;
  image(enemy,x2+b2-640,y12+k);
  y12 += spacingY2;


 }
 if(b2>=1280){
    gameState = a2;
    b=0;
      k=floor(random(0,120));
  }
  break ;
    case a2 :
        image(bg1,a-640,0);
  image(bg2,a,0);  
  image(bg1,a+640,0);
  image(bg2,a-1280,0);
  fill(255,0,0);
  rect(15,10,g,31);
  image(hp,10,10);
//  image(enemy,b,e);
  image(treasure,c,d);
  image(fighter,x,y);
  a += 1 ;

  a %= 1280 ;
  b3 %= 1280 ;
  f %= 440 ;
    if (upPressed) {
    y -= speed;
  }
  if (downPressed) {
    y += speed;
  }
  if (leftPressed) {
    x -= speed;
  }
  if (rightPressed) {
    x += speed;
  }
  if( x <= 0 ){
  x=0;
  }
  if( y <= 0 ){
  y=0;
  }
  if( x >= 590 ){
  x=590; 
  }
  if( y >= 430 ){
  y=430; 
   }
   if(x>=c-45 && x<c+40 && y>=d-45 && y<=d+40){
  c=floor(random(0,600));
  d=floor(random(0,440));
  image(treasure,c,d);   
  g = 40;
  }
   /*if(x>=b-45 && x<b+60 && y>=e-45 && y<=e+60){
  b=0;    
  e=floor(random(0,440));
  image(treasure,b,e);   
  b+=2;
  g -= 40;
  }
  if(g>=200){
    g=200;
  }
  if(e>y){
    e-=2;
  }
  if(e==y){
    b+=3;
  }
  if(e<y){
    e+=2;
  }

  if(g<=0){
    gameState = a1;
  }
    */


b3+=5;
image(enemy,b3-640,120+j);
image(enemy,b3-532,60+j);
image(enemy,b3-424,0+j);
image(enemy,b3-532,180+j);
image(enemy,b3-424,240+j);
image(enemy,b3-316,180+j);
image(enemy,b3-316,60+j);
image(enemy,b3-208,120+j);


 if(b3>=1280){
    gameState = GAME_RUN;
      j=floor(random(0,120));
  }

  break ;  
  case GAME_OVER:
    image(end2,0,0);
  if (mouseX>210 && mouseX<440 && mouseY>315 && mouseY<345){
    if (mousePressed){
     gameState = GAME_RUN;    
     g=40;
  a=0 ;
  b=0 ;
  g=40;
  c=floor(random(0,600));
  d=floor(random(0,440));
  e=floor(random(0,440));
  f=floor(random(0,440)); 
  x = 550;
  y = 240;
    }else{
     image(end1,0,0);
    }
  break;
        
      }
    }
    

}
  

void keyPressed() {
  if (key == CODED) { // detect special keys 
    switch (keyCode) {
      case UP:
        upPressed = true;
        break;
      case DOWN:
        downPressed = true;
        break;
      case LEFT:
        leftPressed = true;
        break;
      case RIGHT:
        rightPressed = true;
        break;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    switch (keyCode) {
      case UP:
        upPressed = false;
        break;
      case DOWN:
        downPressed = false;
        break;
      case LEFT:
        leftPressed = false;
        break;
      case RIGHT:
        rightPressed = false;
        break;
    }
  }
}
