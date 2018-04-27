float rotation = 1, speed = 1;

void setup() {
  size(800, 800);
}

void draw() {
  int [] numbers = new int [2];         //array used to declare basic int values used in draw()
  numbers[0] = height/2;
  numbers[1] = width/2;
 
  background(#99ccff);
  strokeWeight(2);
  grass(); 
  wheel();
  tent1();
  tent2();

  strokeWeight(5);

  pushMatrix();                         //ferris wheel within the pushMatrix/popMatrix giving it an animation.
  translate(numbers[0], numbers[1]);
  rotate(radians(rotation));
  line(0, 0, 95, 95);
  line(0, 0, 95, -95);  
  line(0, 0, 0, 132);  
  line(0, 0, 0, -132);
  line(0, 0, 132, 0);
  line(0, 0, -132, 0);  
  line(0, 0, -95, -95);
  line(0, 0, -95, 95); 
  popMatrix();
 
  rotation += speed;
  speed -= 0.00001;  
}

void wheel() {                          //basic function used to create the rim of the ferris wheel using PVector
PVector location;
PVector size;
location = new PVector(height/2, width/2);
size = new PVector(275, 275);
strokeWeight(5);  
noFill();
ellipse(location.x, location.y, size.x, size.y);
}

void grass(){                           //another PVector function used to create a green rectangle that represents grass.
PVector location;
PVector size;
location = new PVector(0, 500);
size = new PVector(800, 300);
strokeWeight(5);    
fill(#00cc00);
rect(location.x, location.y, size.x, size.y);    
}

void tent1(){                           //tent one creation PVector function
PVector location;
PVector size;
location = new PVector(100, 450);
size = new PVector(80, 80);
strokeWeight(5);  
fill(#ff0000);
rect(location.x, location.y, size.x, size.y); 
triangle(100, 450, 180, 450, 140, 430);
stroke(255);
line(110, 450, 110, 530);
line(120, 450, 120, 530);
line(130, 450, 130, 530);
line(140, 450, 140, 530);
line(150, 450, 150, 530);
line(160, 450, 160, 530);
line(170, 450, 170, 530);
stroke(0);
}

void tent2(){                           //tent two creation PVector function
PVector location;
PVector size;
location = new PVector(620, 450);
size = new PVector(80, 80);
strokeWeight(5);  
fill(#ff0000);
rect(location.x, location.y, size.x, size.y); 
triangle(620, 450, 700, 450, 660, 430);
stroke(255);
line(630, 450, 630, 530);
line(640, 450, 640, 530);
line(650, 450, 650, 530);
line(660, 450, 660, 530);
line(670, 450, 670, 530);
line(680, 450, 680, 530);
line(690, 450, 690, 530);
stroke(0);
}
