float x = 5;  //Declairing variables
float y = 5;
float moveX = .1;
float moveY = 0.025;

void setup() 
{
  size(600, 600);
}

void draw() 
{
  background(#287aff);

  x += moveX; 
  y += moveY;

  if ((x > 20) || (x < 0)) //setting object displacement over time
  {                        //
    moveX *= -1;           //
  }                        //
  if ((y > 20) || (y < 0)) //
  {                        //
    moveY *= -1;           //
  }                        //
  
  Cloud1();    //these are the fuctions being called
  Cloud2();    //
  Cloud3();    //
  Sun();       //
  
  strokeWeight(1);
  fill(#71d164);  
  rect(0, 450, 900, 900);
}

//These are my clouds. Funtions define shape, location, and color.

void Cloud1()
{ 
  strokeWeight(1);
  fill(255);
  rect(x, y, 50, 20);

}

void Cloud2()
{ 
  strokeWeight(1);
  fill(245);
  rect(x+100, y+1, 130, 32);
}

void Cloud3()
{ 
  strokeWeight(1);
  fill(250);
  rect(x+130, y+100, 80, 24);
}
//similar setup to the clouds but instead of a rect it is an ellipse
void Sun() 
{
  strokeWeight(1);
  fill(#f9ff93);
  ellipse(x+400, y+150, 30, 30);
}
