// sorry i eyeballed it

PVector centerPoint; 
PVector offset;

float dist = 50; 

void setup() {
  size(400, 400); 

  offset = new PVector(134, 0); 
  centerPoint = new PVector(width/2, height/2);
  rectMode(CENTER); 
  offset.rotate(radians(10));
}

void draw() {
  background(0);
  offset.rotate(radians(1));

  fill(255, 0, 0);
  ellipse(centerPoint.x + offset.x , centerPoint.y + offset.y , 30, 30);
  fill(255, 255, 0);
  ellipse(230 + offset.x, 100 + offset.y, 30, 30);
  fill(0, 255, 0);
  ellipse(100 + offset.x, 200 + offset.y, 30, 30);
  fill(0, 0, 255);
  ellipse(80 + offset.x, 100 + offset.y, 30, 30);
  fill(255, 0, 255);
  ellipse(150 + offset.x, 50 + offset.y, 30, 30);
  
  
}

void keyPressed(){
  
}
