//move 43 pixels at 48 degrees from 200,200
float degrees = 48; 
void setup(){
  size(400,400);
}

void draw(){
  ellipse(200, 200, 10, 10);
  
  degrees += 1;
  float x = cos(radians(degrees)) * 134; 
  float y = sin(radians(degrees)) * 134; 
  
  rectMode(CENTER); 
  rect(200 + x, 200 + y, 30, 30); 
  
}
