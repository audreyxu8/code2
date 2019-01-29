PVector position; 
float theta = 0; 
int orbitSize = 300; 
int yIncrement;

void setup() {
  size (600, 600); 
  background(0);
  position = new PVector (0, 0);
}

void draw () {
  background(0);
  
  theta +=.1; 

  position.x = width/2 + sin(theta)*orbitSize;

  position.y += yIncrement;

  if (position.y >= height-25) {
    yIncrement = -5;
  }

  if (position.y >= 25) {
    yIncrement = 5;
  }

  ellipse (position.x, position.y, 50, 50);
}
