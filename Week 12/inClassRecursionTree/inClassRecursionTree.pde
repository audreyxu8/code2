float rotation = radians(36);

void setup() {
  noLoop();
  size(500, 500);
}
void draw() {
  translate(width*.5, height);
  rotate(PI);
  branch(100);
}

void branch(float branchLength) {
  line(0, 0, 0, branchLength);
  translate(0, branchLength);
  branchLength *= .75; //+ random(.24);
  pushMatrix();
  rotate(rotation + radians(random(-30,30)));
  if (branchLength > 5) branch(branchLength);
  popMatrix();
  pushMatrix();
  rotate(-rotation);
  if (branchLength > 5) branch(branchLength);
  popMatrix();
}

void oldCode() {
  line(0, 0, 0, 100);
  translate(0, 100);
  pushMatrix();
  rotate(HALF_PI*.5);
  line(0, 0, 0, 70);

  translate(0, 70);
  pushMatrix();
  rotate(HALF_PI*.5);
  line(0, 0, 0, 50);
  popMatrix();
  pushMatrix();
  rotate(HALF_PI*-.5);
  line(0, 0, 0, 50);
  popMatrix();
  popMatrix();

  pushMatrix();
  rotate(HALF_PI*-.5);
  line(0, 0, 0, 70);

  translate(0, 70);
  pushMatrix();
  rotate(HALF_PI*.5);
  line(0, 0, 0, 50);
  popMatrix();
  pushMatrix();
  rotate(HALF_PI*-.5);
  line(0, 0, 0, 50);
  popMatrix();

  popMatrix();
}
