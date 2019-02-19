class Square {
  float squareX, squareY, squareSizeX, squareSizeY;
  color normal, rollover;
  int STATE = 0;


  Square(float _squareX, float _squareY, float _squareSizeX, float _squareSizeY) {
    squareX = _squareX;
    squareY = _squareY;
    squareSizeX = _squareSizeX;
    squareSizeY = _squareSizeY;
    normal = color(255, 0, 255);
    rollover= color(50);
  }

  void squareADisp() {
    if (mouseX > squareX && 
      mouseX < squareX + squareSizeX && 
      mouseY > squareY && 
      mouseY< squareY + squareSizeY) {
      fill(rollover);
    } else {
      fill(normal);
    }

    if (STATE ==0) {
      fill(normal);
    } else if (STATE == 1) {
      fill(0, 255, 255);
    }

    rect(squareX, squareY, squareSizeX, squareSizeY);
    fill(0);
    textSize(20);
    text("A", squareX+40, squareY+30);
  }

  void squareBDisp() {
    if (mouseX > squareX && 
      mouseX < squareX + squareSizeX && 
      mouseY > squareY && 
      mouseY< squareY + squareSizeY) {
      fill(rollover);
    } else {
      fill(normal);
    }

    if (STATE ==0) {
      fill(normal);
    } else if (STATE == 1) {
      fill(0, 255, 255);
    }

    rect(squareX, squareY, squareSizeX, squareSizeY);
    fill(0);
    textSize(20);
    text("B", squareX+40, squareY+30);
  }

  void squareCDisp() {
    if (mouseX > squareX && 
      mouseX < squareX + squareSizeX && 
      mouseY > squareY && 
      mouseY< squareY + squareSizeY) {
      fill(rollover);
    } else {
      fill(normal);
    }
    if (STATE ==0) {
      fill(normal);
    } else if (STATE == 1) {
      fill(0, 255, 255);
    }

    rect(squareX, squareY, squareSizeX, squareSizeY);
    fill(0);
    textSize(20);
    text("C", squareX+40, squareY+30);
  }
  void squareDDisp() {
    if (mouseX > squareX && 
      mouseX < squareX + squareSizeX && 
      mouseY > squareY && 
      mouseY< squareY + squareSizeY) {
      fill(rollover);
    } else {
      fill(normal);
    }
    
    //if (STATE ==0) {
    //  fill(normal);
    //} else if (STATE == 1) {
    //  fill(0, 255, 255);
    //}
    
    rect(squareX, squareY, squareSizeX, squareSizeY);
    fill(0);
    textSize(20);
    text("D", squareX+40, squareY+30);
  }
  void squareEDisp() {
    if (mouseX > squareX && 
      mouseX < squareX + squareSizeX && 
      mouseY > squareY && 
      mouseY< squareY + squareSizeY) {
      fill(rollover);
    } else {
      fill(normal);
    }
    //if (STATE ==0) {
    //  fill(normal);
    //} else if (STATE == 1) {
    //  fill(0, 255, 255);
    //}

    rect(squareX, squareY, squareSizeX, squareSizeY);
    fill(0);
    textSize(20);
    text("E", squareX+40, squareY+30);
  }
  void squareFDisp() {
    if (mouseX > squareX && 
      mouseX < squareX + squareSizeX && 
      mouseY > squareY && 
      mouseY< squareY + squareSizeY) {
      fill(rollover);
    } else {
      fill(normal);
    }
    rect(squareX, squareY, squareSizeX, squareSizeY);
    fill(0);
    textSize(20);
    text("F", squareX+40, squareY+30);
  }

  void handleClick() {
    if (mouseX > squareX && 
      mouseX < squareX + squareSizeX && 
      mouseY > squareY && 
      mouseY< squareY + squareSizeY) {
      STATE++;
      if (STATE>1) {
        STATE = 0;
      }
    }
  }
}
