void setup(){
  fullScreen();
  noStroke();
  float r;
}

void draw(){
  float r = 0;
  int m = millis();
  int w = width;
  
  fill(100,100,255);
  ellipse(mouseX,mouseY + m%(height - mouseY),5,5);
  
  fill(0,1);
  rect(0,0,width,height);
}
