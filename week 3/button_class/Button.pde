class Button {
  float circleX, circleY, squareX, squareY, newX, newY;
  float rectStrokeX, rectStrokeY, rectStrokeSizeX, rectStrokeSizeY;
  float circSize, squareSize, newSizeX, newSizeY;
  color circColor, squareColor;
  color circHighlight, squareHighlight;

  boolean circleRollover = false; 
  boolean squareRollover = false;
  boolean newRollover = false;
  boolean inRect = false;


  Button() {
    circleX = width/2 +300;
    circleY = height/2;
    squareX = width/2-300;
    squareY = height/2-50;
    newX = width/2+50;
    newY = 0;
    rectStrokeX = width/2-100;
    rectStrokeY = 0;

    circSize = 100; 
    squareSize = 100;
    newSizeX = 100;
    newSizeY = 800;
    rectStrokeSizeX = 130;
    rectStrokeSizeY = 800;

    circColor = color(0);
    squareColor = color(0);
    circHighlight = color(255);
    squareHighlight = color(255);
  }

  void squareDisplay() {
    if (mouseX > squareX && 
      mouseX < squareX + squareSize && 
      mouseY > squareY && 
      mouseY< squareY + squareSize) {
      fill(squareHighlight);
      squareRollover = true;
    } else {
      squareRollover = false;
      fill(squareColor);
    }
    rect(squareX, squareY, squareSize, squareSize);
  }

  void circDisplay() {
    if (dist(mouseX, mouseY, circleX, circleY) < circSize/2) {
      circleRollover = true;
      fill(circHighlight);
    } else {
      circleRollover = false;
      fill(circColor);
    }
    ellipse(circleX, circleY, circSize, circSize);
  }

  void newDisplay() {
    if (mouseX > newX && 
      mouseX < newX + newSizeX && 
      mouseY > newY && 
      mouseY< newY + newSizeY) {
      newRollover = true;
      fill(circHighlight);
    } else { 
      newRollover = false;
      println(newRollover);
    }

    if (newX > rectStrokeX && 
      newX < rectStrokeX+rectStrokeSizeX &&
      newY > rectStrokeY &&
      newY < rectStrokeY+ rectStrokeSizeY) {
      inRect = true;
    } else {
      inRect = false;
    }
    
    fill(circColor);
    noStroke();
    rect(newX, newY, newSizeX, newSizeY);

    noFill();
    stroke(255, 0, 0);
    rect(rectStrokeX, rectStrokeY, rectStrokeSizeX, rectStrokeSizeY);
  }

  //void newDrag() {
  //  if (mouseX > newX && 
  //    mouseX < newX + newSizeX && 
  //    mouseY > newY && 
  //    mouseY< newY + newSizeY) {
  //    newRollover = true;
  //    newX = mouseX;
  //    newY = mouseY;
  //  } else { 
  //    newRollover = false;
  //    println(newRollover);
  //  }


  //}
}
