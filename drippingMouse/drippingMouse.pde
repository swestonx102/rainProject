void setup(){
  fullScreen();
  noStroke();
  float r;
}

void draw(){
  float r = 0;
  drip(10,50);
  fill(0,1);
  rect(0,0,width,height);
}

void drip(int level, int d){
  int m = millis();
  fill(random(255),random(255),random(255));
  ellipse(mouseX,mouseY + m%(height - mouseY),5,5);
  if(level < 1) {
  level = level - 1;
  delay(d);
  drip(level,d);
  }
}
