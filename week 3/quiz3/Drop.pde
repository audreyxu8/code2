class Drop{
  PVector pos; 
  PVector velocity;
  PVector gravity;
  
  color c; 
  
  float size;
  
  Drop(){
    pos = new PVector(random(0,300),0);
    velocity = new PVector(0, random(0,5));
    gravity = new PVector(0,.1);
    //size = 50;
  }
  
  void fall(){
    pos.add(velocity);
  }
  
  void gravity(){
    velocity.add(gravity);
  }
  
  void display(float _size){
    c = color(map(pos.y,100, 255,100, 255),0, map(pos.y, 100, 255, 100, 255));
    
    fill(c);
    ellipse(pos.x, pos.y, _size, _size);
  }
}
