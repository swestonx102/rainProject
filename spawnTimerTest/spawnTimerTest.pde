String time = "000";
int initialTime;
int interval = 50;
color bg = color(255);
void setup(){
  fullScreen();
  background(255);
  fill(0);
  initialTime = millis();
    frameRate(30);
}

void draw(){
  background(bg);
  fill(100,100,255);
  if (millis() - initialTime > interval)
  {
    ellipse(random(width),millis()%height,15,15);
  }
}
