Heart h;
float x, y, x1, y1;

void setup() {
  size( 800, 600);
  h = new Heart();
  imageMode(CENTER);
}

void draw() {
  drawBackground();
  h.displayCharacter();
  h.update();
}

void drawBackground() {
  background(255);
  noStroke();
  
  int bgColor; 
  int b; 
  bgColor = int(map(calcDist(x,y), 0, width/2, 0, 255)); 
  b = int(map(calcDist(x1, y1), 0, width/2, 100, 255)); 
  background(bgColor, 0, b); 
  
}

  float calcDist(float xPos,float yPos){
  float dist = dist(mouseX, mouseY, xPos, yPos); 
  return dist; 
}
