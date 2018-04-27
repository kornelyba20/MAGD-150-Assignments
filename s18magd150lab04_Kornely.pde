void setup() {
  size(800,800);
  background(#000000);
}

void draw() {  
  scale(zoom);
  rotate(angle);
  
  fill(#ffffff);  
  for (float i = 0; i < 1400; i++) {
    rotate(0.215);
    ellipse(i, 0, 5, 5);
  }
  
  fill(#fdff00);
  ellipse(0,0,s,s);  

  fill(#dabdab);
  ellipse(0,512,m,m);
  
  fill(#77b2ab);
  ellipse(0,200,e,e);
}

  int s = 90;
  int m = 50;
  int e = 30;
  
  float zoom = 1;
  float angle = 0;

void keyPressed() { //Use to destroy the space time continuum
  if (key == UP) {
    zoom += .03;
  } else if (keyCode == DOWN) {
    zoom -= .03;
  } else if (keyCode == RIGHT) {
    angle += .03;
  } else if (keyCode == LEFT) {
    angle -= .03;
  }
}

void mousePressed() { //this restores the instance
  background(#000000);
}
