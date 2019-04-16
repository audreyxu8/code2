class Circle extends Shape {
  Circle(float _x, float _y, float _w) {
    // super is call Shapes functions
    super( _x, _y,_w);
    setColor(100, 50, 230);
  }
  void display() {
    fill(fillColor);
    ellipse(pos.x, pos.y, w, h);
  }
}
