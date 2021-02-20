void setup(){
  fullScreen();
  noStroke();
  float r;
}

void draw(){
  float r = 0;
  drip(10,50,15);
  fill(0,15);
  rect(0,0,width,height);
}

void drip(int level, int d, float df)//level of recursion, d = delay, df = drip factor
{
  int m = millis();
  float idf = df;//idf = initial drip factor. recursion might bork this
  fill(100,100,255);
  while(mouseY + df < height){
  ellipse(mouseX,mouseY + df,5,5);
  df = df + random(idf);
  }
  /*if(level < 1) {
  level = level - 1;
  delay(d);
  drip(level,d,df);
  }*/
}
