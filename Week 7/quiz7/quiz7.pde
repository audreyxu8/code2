//reference to last semester's sketch 

PVector pos, vel, acc, grav; 
boolean isCaught = false; 

int size = 50; 
float r, g, b; 

void setup() {
  size(500, 500);

  pos = new PVector(width/2, height/2); 
  vel = new PVector(1, 0);
  acc = new PVector(0, 0); 
  grav = new PVector(0, .2);
}

void draw() {
  background(0);
  pos.add(vel); 
  vel.add(acc); 
  vel.add(grav); 

  //bottom bounce 
  if (pos.y >= (height - size/2)) {
    vel.y = -vel.y;
    r = random(0, 255); 
    g = random(0, 255); 
    b = random(0, 255);
  }

  //side bounce 
  if (pos.x > width - size/2 || pos.x <= size/2) {
    vel.x = -vel.x;
  }

  if (dist(mouseX, mouseY, pos.x, pos.y) < size/2) {
    isCaught = true;
  }
  
  noStroke(); 
  fill(r, g, b);
  ellipse(pos.x, pos.y, size, size);
  
  if(mousePressed == true && isCaught == true){
    pos.x = mouseX; 
    pos.y = mouseY;
  }
}
