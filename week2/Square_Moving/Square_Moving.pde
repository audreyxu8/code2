PVector pos, velocity;
float speed = 3;

void setup(){
  size (800,500);
  pos = new PVector(0, height/2);
  velocity = new PVector(5,0);
}

void draw(){
  background(0);
  rect(pos.x, pos.y, 80, 80);
  pos.x = pos.x + velocity.x;
  pos.y = pos.y + velocity.y;

}
