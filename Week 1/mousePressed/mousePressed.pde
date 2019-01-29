float a, b;

void setup() {
  size(800, 800); 
  noStroke();  

}

void draw() { 
  background(0);
  ellipse(a, b, 50, 50);
  
  if (mousePressed==true){
  a = lerp(a, mouseX, 0.099);
  b = lerp(b, mouseY, 0.099);
  }
}
