class Circle {
  int x, y, size; 

  color circleColor, secondColor, thirdColor; 


  boolean strokeChange = false;

  Circle(int _startX, int _startY) {
    x = _startX;
    y = _startY;
    size = int(random(10, 90));
    circleColor = color(255, 0, 0);
    secondColor = color(0, 255, 0);
    thirdColor = color (0, 0, 255);
  }

  void display(int x, int y, boolean circleOver) {

    fill(circleColor);

    if (circleOver == true) {
      if (overCircle(x, y, size)) {
        stroke(0,255,255);
        strokeChange = true;
      } else {
        noStroke();
        strokeChange = false;
      }
    }
    
    ellipse(x, y, size, size);
  }

  //  if (circleOver) {
  //    fill(secondColor);
  //  } else {
  //    fill(circleColor);
  //  }
  //  ellipse(x, y, size, size);
  //}


  boolean overCircle(int x, int y, int size) {

    float disX = x - mouseX;
    float disY = y - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < size/2 ) {
      return true;
    } else {
      return false;
    }
  }
}
