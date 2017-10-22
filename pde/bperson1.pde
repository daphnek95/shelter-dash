class bp1{
  float x; 
  float y;
  float v;
  float w=50;
  PImage icon;
  boolean alive;
  
  bp1(){
    x=random(width);
    y=random(height-200);
    v=random(1,3);
    icon=loadImage("person4.png");
    alive=true;
  }
  
  void display() {
    image(icon,x,y); 
  }
  
  void walk() {
    x=x+v;
    if(x>width){
      x=0;
    }
    if(dist(playerx,playery,x,y)<w){
      state=5;
    }
  }  
}