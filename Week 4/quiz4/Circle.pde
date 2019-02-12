class Circle {
  PVector pos; 

  color circleHighlight, circleColor; 

  float size;

  boolean circleOver = false;

  Circle(float _startX, float _startY) {
    pos = new PVector(_startX, _startY);
    size = random(10, 90);
    c = color(255, 0, 0);
  }

  void display(float _startX, float _startY) {
    pos.x = _startX;
    pos.y= _startY;
    fill(c);
    if (circleOver) {
      fill(circleHighlight);
    } else {
      fill(circleColor);
    }
    ellipse(pos.x, pos.y, size, size);
  }

  void mousePressed() {
  }

  boolean overCircle(float _startX, float _startY, int size) {
    pos.x = _startX;
    pos.y= _startY;

    float disX = pos.x - mouseX;
    float disY = pos.y - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < size/2 ) {
      return true;
    } else {
      return false;
    }
  }
}
