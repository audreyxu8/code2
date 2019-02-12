class Firework{
  PVector pos;
  PVector velocity;
  float size;
  color c;
  
  Firework(){
    pos = new PVector(random(0,800), height);
    velocity = new PVector (0, random(-5,-1));
  }
  
  void fly(){
    pos.add(velocity);
  }
  void display(float _size){
    c = color(random(0,255),0,0);
    fill(c);
    ellipse(pos.x, pos.y, _size, _size);
  }
  
  void fireworks(){
  for (int i=0; i<fireworks.size(); i++) {
    Firework f = fireworks.get(i);
    f.display(random(0, 50));
    f.fly();
  }

  fireworks.add(new Firework());
}
}
