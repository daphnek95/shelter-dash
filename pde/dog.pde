class dog{
  PImage icon;
  float x;
  float y;
  float vx;
  float vy;
  float w=45;
  boolean alive;
  
  dog(){
    x=random(width);
    y=random(height);
    vx=random(-6,6);
    vy=random(-4,4);
    alive=true;
    icon=loadImage("dog4.png");
  }
  
  void display(){
    image(icon,x,y);
  }
  
  void walk(){
    if(dist(playerx,playery,x,y)<w){
      alive=false;
    }else{
    x=x+vx;
    y=y+vy;
    if(x>width){
      x=0;
    }
    if(x<0){
      x=width;
    }
    if(y>height){
      y=0;
    }
    if(y<0){
      y=height;
    }
  }}
}