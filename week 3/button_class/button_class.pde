// reference for dragging shape https://www.youtube.com/watch?v=72Ej8JRj6jk
Button circleButton;
Button squareButton;
Button newButton;

ArrayList<Firework> fireworks;

color bgColor = color(255);
boolean squareIsClicked = false;
boolean circleIsClicked = false;
boolean shootFireworks = false;
boolean newButtonDisp = false;
boolean inRect = false;

void setup() {
  size(800, 500);
  background(bgColor);
  circleButton = new Button();
  squareButton = new Button();
  newButton = new Button();
  fireworks = new ArrayList<Firework>();
}

void draw() {
  //background(bgColor);
  circleButton.circDisplay();
  squareButton.squareDisplay();

  if (newButtonDisp == true) {
    newButton.newDisplay();
  }

  //fireworks
  for (int i = 0; i<fireworks.size(); i++) {
    if (shootFireworks == true) {
      Firework f = fireworks.get(i);
      f.display();
    }
  }

  //dragging big rectangle
  if (newButton.newRollover == true) {
    if (mousePressed) {
      newButton.newX = mouseX; 
      newButton.newY = mouseY;
    }
  }



  //dragging the circle 
  //if (circleButton.circleRollover == true) {
  //  if (mousePressed) {
  //    circleButton.circleX = mouseX;
  //    circleButton.circleY = mouseY;
  //  }
  //}

  //circleButton drag location 
  //noFill();
  //stroke(255,0,0);
  //ellipse(circleStrokeX, circleStrokeY, circleStrokeSize, circleStrokeSize);
}


void mouseClicked() {
  if (squareButton.squareRollover ==true) {
    squareIsClicked = true;
  } else {
    squareIsClicked = false;
  }

  if (squareIsClicked == true) {
    shootFireworks = true;
    fireworks.add(new Firework());
    background(50);
  }
  if (circleButton.circleRollover == true) {
    circleIsClicked = true;
  } else {
    circleIsClicked = false;
  }



  if (circleIsClicked == true) {
    newButtonDisp = true;
  }

  //println(squareIsClicked);
  //println(circleIsClicked);
}
