// reference https://processing.org/examples/easing.html

float x, y;
float easing = 0.05;

void setup() {
  size(800, 800); 
  noStroke();  

}

void draw() { 
  background(0);

  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  ellipse(x, y, 50, 50);

}
