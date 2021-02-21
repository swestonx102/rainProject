rainDrop r;

void setup(){
  r = new rainDrop();
  fullScreen();
  noStroke();
  background(0);
}

class rainDrop{
  int i = 0;
  rainDrop(){
  }
  void drip(){
    if((height - mouseY) - i*20 > 0){
      ellipse(mouseX,mouseY + i*20, 10,10);
      i += 1;
      delay(10);
    }else{i = 0;}
  }
}

void draw(){
  fill(100,100,255);
  r.drip();
  fill(0,10);
  rect(0,0,width,height);
}
