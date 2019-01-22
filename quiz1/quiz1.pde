float x = width/2;
float y = height/2;
int size = 50;
float xSpeed = 3;



void setup() {
  size(600, 600);
  background (0);


}

void draw() {
  ellipse(x, y, size, size);
  x = x + xSpeed;

  if (x > width-size/2 || x < size/2) {
    xSpeed = xSpeed*-1;
  }
}
