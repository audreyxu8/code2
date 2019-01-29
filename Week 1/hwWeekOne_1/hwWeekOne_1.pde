float a, b;

void setup() {
  size(800, 800); 
  noStroke();  
}

void draw() { 
  background(0);

  a = lerp(a, mouseX, 0.05);
  b = lerp(b, mouseY, 0.05);

  ellipse(a, b, 50, 50);
}
