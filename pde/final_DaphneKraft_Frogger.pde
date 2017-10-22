PImage playerb,playerg,cSelect,room,l1,l2,l3,l4,end,intro,floor;
float playerx,playery;
int state=0;
int counter=60;
ArrayList myD1,myD2,myD3,myD4,myP1,myP2,myCats,myDogs,myBp1,myBp2,myBp3,myGp1,myGp2,myGp3;

void setup(){
  size(1080,720);
  background(0);
  intro=loadImage("intro.png");
  room=loadImage("room.png");
  floor=loadImage("floor.png");
  l1=loadImage("lvl1.png");
  l2=loadImage("lvl2.png");
  l3=loadImage("lvl3.png");
  l4=loadImage("lvl4.png");
  end=loadImage("end.png");
  cSelect=loadImage("charSelect.png");
  playerb=loadImage("bMain.png");
  playerg=loadImage("gMain.png");
  playerx=540;
  playery=640;
  myBp1=new ArrayList();
  for(int i=0;i<20;i++){
    myBp1.add(new bp1());
  }
  myBp2=new ArrayList();
  for(int i=0;i<20;i++){
    myBp2.add(new bp2());
  }
  myBp3=new ArrayList();
  for(int i=0;i<20;i++){
    myBp3.add(new bp3());
  }
  myGp1=new ArrayList();
  for(int i=0;i<20;i++){
    myGp1.add(new gp1());
  }
  myGp2=new ArrayList();
  for(int i=0;i<20;i++){
    myGp2.add(new gp2());
  }
  myGp3=new ArrayList();
  for(int i=0;i<20;i++){
    myGp3.add(new gp3());
  }
  myD1=new ArrayList();
  myD2=new ArrayList();
  myD3=new ArrayList();
  myD4=new ArrayList();
  myP1=new ArrayList();
  myP2=new ArrayList();
  for(int i=0;i<1;i++){
    myD1.add(new d1());
    myD2.add(new d2());
    myD3.add(new d3());
    myD4.add(new d4());
    myP1.add(new p1());
    myP2.add(new p2());
  }
  myCats=new ArrayList();
  for(int i=0;i<25;i++){
    myCats.add(new cat());
  }
  myDogs=new ArrayList();
  for(int i=0;i<15;i++){
    myDogs.add(new dog());
  }
}

void draw(){
  switch(state){
    case 0: //INTRO screen
      image(intro,0,0);
      break;
    case 1: //Character select - Boy case 2 - Girl case 18
      if(keyCode==66){
        state=2;
      }
      if(keyCode==71){
        state=18;
      }
      image(cSelect,0,0);
      break;
    case 2: //BOY SCENARIO - lvl 1 intro
      image(l1,0,0);
      break;
    case 3: //BOY SCENARIO - lvl 1 delay
      counter=counter-1;
      if(counter<0){
        state=4;
        counter=60;
        playerx=540;
        playery=640;
      }
        background(0);
        break;
    case 4: //BOY SCENARIO - lvl 1 play
      image(room,0,0);
      for(int i=0;i<myD1.size();i++){
        d1 d1=(d1) myD1.get(i);
        d1.display();
        d1.action();
      }
      for(int i=0;i<myBp1.size();i++){
        bp1 bp1=(bp1) myBp1.get(i);
        bp1.display();
        bp1.walk();
      }
      image(playerb,playerx,playery);
      break;
    case 5: //BOY SCENARIO - lvl 1 START OVER
      background(0);
      textSize(24);
      text("START OVER",400,120);
      textSize(20);
      text("click to replay",800,500);
      playerx=540;
      playery=640;
      break;
    case 6: //BOY SCENARIO - lvl 2 intro
      image(l2,0,0);
      break;
    case 7: //BOY SCENARIO - lvl 2 delay
      counter=counter-1;
      if(counter<0){
        state=8;
        counter=60;
        playerx=540;
        playery=640;
      }
      background(0);
      break;
    case 8: //BOY SCENARIO - lvl 2 play - DOGS
      image(floor,0,0);
      for(int i=0;i<myDogs.size();i++){
        dog dog=(dog) myDogs.get(i);
        dog.display();
        dog.walk();
        if(dog.alive==false){
          myDogs.remove(i);
        }
        if(myDogs.size()==0){
          state=9;
          playerx=540;
          playery=640;
        }
      }
      image(playerb,playerx,playery);
      break;
    case 9: //BOY SCENARIO - lvl 3 intro
      image(l3,0,0);
      break;
    case 10: //BOY SCENARIO - lvl 3 delay
      counter=counter-1;
      if(counter<0){
        state=11;
        counter=60;
        playerx=540;
        playery=640;
      }
      background(0);
      break;
    case 11: //BOY SCENARIO - lvl 3 play - Get to Office
      image(room,0,0);
      for(int i=0;i<myD2.size();i++){
        d2 d2=(d2) myD2.get(i);
        d2.display();
        d2.action();
      }
      for(int i=0;i<myBp2.size();i++){
        bp2 bp2=(bp2) myBp2.get(i);
        bp2.display();
        bp2.walk();
      }
      image(playerb,playerx,playery);
      break;
    case 12: //BOY SCENARIO - lvl 3 - pt 1 - START OVER
      background(0);
      textSize(24);
      text("START OVER",400,120);
      textSize(20);
      text("click to replay",800,500);
      playerx=540;
      playery=640;
      break;
    case 13: //BOY SCENARIO - lvl 3 play - Get to Printer
      image(room,0,0);
      for(int i=0;i<myP1.size();i++){
        p1 p1=(p1) myP1.get(i);
        p1.display();
        p1.action();
      }
      for(int i=0;i<myBp3.size();i++){
        bp3 bp3=(bp3) myBp3.get(i);
        bp3.display();
        bp3.walk();
      }
      image(playerb,playerx,playery);
      break;
    case 14: //BOY SCENARIO - lvl 3 - pt 2 - START OVER
      background(0);
      textSize(24);
      text("START OVER",400,120);
      textSize(20);
      text("click to replay",800,500);
      playerx=540;
      playery=640;
      break;
    case 15: //BOY SCENARIO - lvl 4 intro
      image(l4,0,0);
      break;
    case 16: //BOY SCENARIO - lvl 4 delay
      counter=counter-1;
      if(counter<0){
        state=17;
        counter=60;
        playerx=540;
        playery=640;
      }
      background(0);
      break;
    case 17: //BOY SCENARIO - lvl 4 play - CATS - JUMP TO CASE 35
      image(floor,0,0);
      for(int i=0;i<myCats.size();i++){
        cat cat=(cat) myCats.get(i);
        cat.display();
        cat.walk();
        if(cat.alive==false){
          myCats.remove(i);
        }
        if(myCats.size()==0){
          state=35;
          playerx=540;
          playery=640;
        }
      }
      image(playerb,playerx,playery);
      break;
    case 18: //GIRL SCENARIO - lvl 1 intro
      image(l1,0,0);
      break;
    case 20: //GIRL SCENARIO - lvl 1 delay
      counter=counter-1;
      if(counter<0){
        state=21;
        counter=60;
        playerx=540;
        playery=640;
      }
      background(0);
      break;
    case 21: //GIRL SCENARIO - lvl 1 play
      image(room,0,0);
      for(int i=0;i<myD3.size();i++){
        d3 d3=(d3) myD3.get(i);
        d3.display();
        d3.action();
      }
      for(int i=0;i<myGp1.size();i++){
        gp1 gp1=(gp1) myGp1.get(i);
        gp1.display();
        gp1.walk();
      }
      image(playerg,playerx,playery);
      break;
    case 22: //GIRL SCENARIO - lvl 1 START OVER
      background(0);
      textSize(24);
      text("START OVER",400,120);
      textSize(20);
      text("click to replay",800,500);
      playerx=540;
      playery=640;
      break;
    case 23: //GIRL SCENARIO - lvl 2 intro
      image(l2,0,0);
      break;
    case 24: //GIRL SCENARIO - lvl 2 delay
      counter=counter-1;
      if(counter<0){
        state=25;
        counter=60;
        playerx=540;
        playery=640;
      }
      background(0);
      break;
    case 25: //GIRL SCENARIO - lvl 2 play - DOGS
      image(floor,0,0);
      for(int i=0;i<myDogs.size();i++){
        dog dog=(dog) myDogs.get(i);
        dog.display();
        dog.walk();
        if(dog.alive==false){
          myDogs.remove(i);
        }
        if(myDogs.size()==0){
          state=26;
          playerx=540;
          playery=640;
        }
      }
      image(playerg,playerx,playery);
      break;
    case 26: //GIRL SCENARIO - lvl 3 intro
      image(l3,0,0);
      break;
    case 27: //GIRL SCENARIO - lvl 3 delay
      counter=counter-1;
      if(counter<0){
        state=28;
        counter=60;
        playerx=540;
        playery=640;
      }
      background(0);
      break;
    case 28: //GIRL SCENARIO - lvl 3 play - Get to Office
      image(room,0,0);
      for(int i=0;i<myD4.size();i++){
        d4 d4=(d4) myD4.get(i);
        d4.display();
        d4.action();
      }
      for(int i=0;i<myGp2.size();i++){
        gp2 gp2=(gp2) myGp2.get(i);
        gp2.display();
        gp2.walk();
      }
      image(playerg,playerx,playery);
      break;
    case 29: //GIRL SCENARIO - lvl 3 - pt 1 - START OVER
      background(0);
      textSize(24);
      text("START OVER",400,120);
      textSize(20);
      text("click to replay",800,500);
      playerx=540;
      playery=640;
      break;
    case 30: //GIRL SCENARIO - lvl 3 play - Get to Printer
      image(room,0,0);
      for(int i=0;i<myP2.size();i++){
        p2 p2=(p2) myP2.get(i);
        p2.display();
        p2.action();
      }
      for(int i=0;i<myGp3.size();i++){
        gp3 gp3=(gp3) myGp3.get(i);
        gp3.display();
        gp3.walk();
      }
      image(playerg,playerx,playery);
      break;
    case 31: //GIRL SCENARIO - lvl 3 - pt 2 - START OVER
      background(0);
      textSize(24);
      text("START OVER",400,120);
      textSize(20);
      text("click to replay",800,500);
      playerx=540;
      playery=640;
      break;
    case 32: //GIRL SCENARIO - lvl 4 intro
      image(l4,0,0);
      break;
    case 33: //GIRL SCENARIO - lvl 4 delay
      counter=counter-1;
      if(counter<0){
        state=34;
        counter=60;
        playerx=540;
        playery=640;
      }
      background(0);
      break;
    case 34: //GIRL SCENARIO - lvl 4 play - CATS
      image(floor,0,0);
      for(int i=0;i<myCats.size();i++){
        cat cat=(cat) myCats.get(i);
        cat.display();
        cat.walk();
        if(cat.alive==false){
          myCats.remove(i);
        }
        if(myCats.size()==0){
          state=35;
          playerx=540;
          playery=640;
        }
      }
      image(playerg,playerx,playery);
      break;
    case 35: //GIRL SCENARIO - END GAME - JUMP BACK TO CASE 0
      image(end,0,0);
      break;
  }
}

void keyPressed() {
  switch(keyCode){
    case 37: //left
      playerx=playerx-30;
      if(playerx<0){
        playerx=width-50;
      }
      break;
    case 38: //up
      playery=playery-40;
      if(playery<0){
        playery=height-50;
      }
      break;
    case 39: //right
      playerx=playerx+30;
      if(playerx>width-50){
        playerx=0;
      }
      break;
    case 40: //down
      playery=playery+40;
      if(playery>height-50){
        playery=0;
      }  
      break;
  }
}

void mousePressed(){
  if(state==0){
    state=1;
  }
  if(state==2){
    state=3;
  }
  if(state==5){
    state=4;
  }
  if(state==6){
    state=7;
  }
  if(state==9){
    state=10;
  }
  if(state==12){
    state=11;
  }
  if(state==14){
    state=13;
  }
  if(state==15){
    state=16;
  }
  if(state==18){
    state=20;
  }
  if(state==22){
    state=21;
  }
  if(state==23){
    state=24;
  }
  if(state==26){
    state=27;
  }
  if(state==29){
    state=28;
  }
  if(state==31){
    state=30;
  }
  if(state==32){
    state=33;
  }
  if(state==35){
    exit();
  }
}