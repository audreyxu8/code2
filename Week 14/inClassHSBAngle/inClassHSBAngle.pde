// HSB Color Wheel

float angle = 360;
float dist = 100; 

void setup() {
    background(0);
  size(500, 500);
  noStroke();
}

void draw() {
  colorMode(RGB);

  colorMode(HSB, 360, 100, 100);

  dist = sin( radians(angle)) * 100 + 50;

  // sin + cos = -1 to 1 back n forth action 
  float x = cos( radians(angle)) * dist;
  float y = sin( radians(angle)) * dist;

  fill(0, 0, 100);
  ellipse(250, 250, 3, 3);
  fill(angle, 100, 100);
  ellipse(x + 250, y + 250, 30, 30);

  fill(angle, 200, 100);
  ellipse(x + 150, y + 150, 30, 30);

  //angle += 1; 
  //modulo keeps it between 1 and 360
  //angle/360 = 0 
  angle %= 360;
  if (angle < 0) angle+= 360;
}

// Add in key presses to move the bigger circle

void keyPressed() {
  if (key == '=') {
    angle ++;
  }

    if (key == '-') {
      angle--;
    }
  }
