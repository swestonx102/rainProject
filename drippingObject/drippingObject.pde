rainDrop r;
int initialTime;
int interval = 50;
void setup(){
  r = new rainDrop();
  fullScreen();
  initialTime = millis();
}

class rainDrop {
  float x;
  rainDrop(){
    x = random(width);
  } 
  void drip(){
    ellipse(x,millis()%height,15,15);
    if(millis()%height < 1){
      x = random(width);
    }
  }
}

void draw(){
  if(millis() - initialTime > interval){
    r.drip();
  }
}
