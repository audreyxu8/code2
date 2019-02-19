class Firework {
  PVector pos;
  PVector velocity;
  float size;
  color c;

  Firework() {
    pos = new PVector(random(0, 800), height);
    velocity = new PVector (0, random(-5, -1));
    size = random (1,30);
  }
  
  void display() {
    c = color(random(0, 255), 0, 0);
    fill(c);
    ellipse(pos.x, pos.y, size, size);
    pos.add(velocity);
  }
}
