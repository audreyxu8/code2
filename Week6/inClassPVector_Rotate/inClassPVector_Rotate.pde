//move 134 pixel at 48 degrees from 200,200

PVector offset;

void setup() {
  size(400, 400); 
  
  offset = new PVector(134, 0); 
  rectMode(CENTER); 
  offset.rotate(radians(48));
}

void draw() {
  offset.rotate(radians(1));
  line(200, 200, 200 + offset.x, 200 + offset.y);
  rect(200 + offset.x, 200 + offset.y, 30, 30);
}
