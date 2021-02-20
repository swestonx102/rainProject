void setup(){
  fullScreen();
  noStroke();
  float r;
}

void draw(){
  float r = 0;
  drip(6);
  fill(0,1);
  rect(0,0,width,height);
}

void drip(int level){
  int m = millis();
  fill(100,100,255);
  ellipse(mouseX,mouseY + m%(height - mouseY),5,5);
  if(level < 1)
  level = level - 1;
  drip(level);
}
