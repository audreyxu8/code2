//reference https://p5js.org/reference/#/p5/atan2

void setup(){
  size(800,800);
}

void draw() {
  background(0);
  
  translate(width / 2, height / 2);
  float a = atan2(mouseY - height / 2, mouseX - width / 2);
  rotate(a);
  rectMode(CENTER);
  rect(0, 0, 100,100);
}
