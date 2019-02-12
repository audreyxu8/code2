class Button {
  PVector circPos, squarePos;
  float circSize, squareSize;
  color circColor, squareColor;
  color circHighlight, squareHighlight;

  boolean buttonIsClicked = false;

  Button() {
    circPos = new PVector(width/2 +300, height/2);
    squarePos = new PVector(width/2-300, height/2-50);
    circColor = color(255);
    squareColor = color(255);
    circHighlight = color(100);
    squareHighlight = color(100);
  }

  void squareDisplay(float _squareSize) {
    rect(squarePos.x, squarePos.y, _squareSize, _squareSize);
  }

  void circDisplay(float _circSize) {
    ellipse(circPos.x, circPos.y, _circSize, _circSize);
  }

  void circRollover() {
  }

  void squareRollover(float _squareSize) {
    if (mouseX > squarePos.x && 
      mouseX < squarePos.x + squareSize && 
      mouseY > squarePos.y && 
      mouseY< squarePos.y + squareSize) {
      fill(squareHighlight);
    } else {
      fill(squareColor);
    }
    rect(squarePos.x, squarePos.y, _squareSize, _squareSize);
  }

  //void detection() {
  //  if (mouseX > squarePos.x && 
  //    mouseX < squarePos.x + squareSize && 
  //    mouseY > squarePos.y && 
  //    mouseY< squarePos.y + squareSize) {
  //    buttonIsClicked = !buttonIsClicked;
  //  }
  //}
}
