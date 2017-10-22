class p2{
  PImage icon;
  float x;
  float y;
  float w=75;
  
  p2(){
    x=random(width-50);
    y=0;
    icon=loadImage("printer.png");
  }
  
  void display(){
    image(icon,x,y);
  }
  
  void action(){
    if(dist(playerx,playery,x,y)<w){
      state=32;
      playerx=540;
      playery=640;
    }
    if(x>width){
      x=0;
    }
  }
}