float q = 450;
float w = 190;
float e = 20;
float r = 20;

float a = 460;
float s = 240;
float d = 20;
float f = 20;
color screenOn = color(255); 
color screenOff = color(0); 
color currentColor;

void setup() {
size(600,400);
}

void draw() { 
  background(#ffef90);
  
  line(300, 110, 250, 60);
  line(300, 110, 350, 60);
  
  fill(100);
  ellipse(300, 110, 90, 50);  
  
  fill(#744000);  
  rect(100, 100, 400, 200);
      
  fill(currentColor);      
  rect(120,120,300,160);

  fill(#31923c);
  rect(q, w, e, r);  
  
  fill(#923131);
  ellipse(a, s, d, f); 
  
 if(mousePressed)
 {
  if(mouseX>q && mouseX <q+e && mouseY>w && mouseY <w+r)
  {
   currentColor = screenOn; 
   fill(screenOn);
   println("The screen is on");
  } 
  else if(mouseX>a && mouseX <a+d && mouseY>s && mouseY <s+f)
  {
   currentColor = screenOff;    
   fill(screenOff); 
   println("The screen is off");
  }
 } 
}
