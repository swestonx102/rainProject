gridd[] gridd1;
gridd[] gridd2;
int numRings = 15;

void setup() {
  fullScreen();
  noStroke();
  gridd1 = new gridd[numRings];
  gridd2 = new gridd[numRings];

   for(int i = 0; i < numRings; i++){

    gridd1[i] = new gridd((float)numRings - (float)i/.011,(float)i/.011, i*0.1,i*4);
    gridd2[i] = new gridd((float)numRings - (float)i/.012,(float)i/.012, i*0.2,i*3);
  }
}

void draw() {
  for(int i = 0; i < numRings; i++){
  gridd1[i].display();
  gridd2[i].display();
  }
  gridd1[0].frame();
}



class gridd {
  float oD;
  float xcD;
  float ysD;
  float xc;
  float ys;
  float o;
  float xp;
  float yp;
  float xx;
  float yy;
  float a;
  float cs; float csm;
  float i = 0;
  float r; float g; float b;

  gridd(float tx, float ty, float to, float tcn){
    xcD = tx;
    ysD = ty;
    oD = to;
    o = 0;
    cs = tcn;
  }
  void display() {
        xx = width/2;
        yy = height/2;
        xp = mouseX;
        yp = mouseY;

        a = atan2(xp-(float)mouseX,yp-float(mouseX));
        ys = sin(o)*((o%40) - 20)/20;
        xc = cos(o)*((o%40) - 20)/20;

        csm = map(mouseX, 0, width, 0, cs) + map(mouseY, 0, height, 0, cs) + cs;

        r = map(mouseX, 0, width, 0, 100)*((o*100)%100)/100 +cs;
        g = map(mouseY, 0, height, 0, 100);
        b = map(mouseX, 0, width, 0, 100)*((o*100)%60)/60 +cs;

        fill(r,g,b);
        ellipse(xp + xc*xcD, yp + ys*ysD, csm, csm);
        fill(255-r, g, b);
        ellipse(width - xp - xc*xcD, height - yp - ys*ysD, csm, csm);

        o+=0.01*oD;
        i++;
        }

        void frame(){
    fill(0,10);
    rect(0,0,width,height);
    }
  }
