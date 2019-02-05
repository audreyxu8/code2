float lineX = 100;
float rectWidth = 40;
float rectHeight = 60;
float rectX = 150;
float rectY = 120;
color bgColor = color(220, 100, 200);

boolean buttonIsClicked = false;

void setup() {
  size(300, 500);
}

void draw() {
  background(bgColor);
  line(lineX, 0, lineX, height);
  rect(rectX, rectY, rectWidth, rectHeight);

  if (buttonIsClicked) {
    bgColor = color(0, 100, 200);
  } else {
    bgColor = color(220, 100, 200);
  }
}

void detection() {
  if (mouseX > rectX && 
    mouseX < rectX + rectWidth && 
    mouseY > rectY && 
    mouseY< rectY + rectHeight) {
    bgColor = color(0, 100, 200);
  } else {
    bgColor = color(220, 100, 200);
  }
}
void mouseClicked() {
  if (mouseX > rectX && 
    mouseX < rectX + rectWidth && 
    mouseY > rectY && 
    mouseY< rectY + rectHeight) {
    //if (buttonIsClicked) {
    //  buttonIsClicked = false;
    //} else {
    //  buttonIsClicked = true;
    //}
    
    //same thing
    buttonIsClicked = !buttonIsClicked;
  }

  println(buttonIsClicked);
}
