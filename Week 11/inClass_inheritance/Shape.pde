class Shape {
  PVector pos;
  float w, h; // width and height are reserved variables
  color fillColor = color(255);
  color rolloverColor = color(0);
  Shape( float _x, float _y, float _w) {
    pos = new PVector(_x, _y);
    w = _w;
    //h = _h;
  }
  void display() {}
  // two functions bc two diff values u can put in; can pass a color or 3 integers rgbs
  //add grey for options
  void setColor( float _r, float _g, float _b) {
    setColor( color(_r, _g, _b) );
  }
  void setColor( color _c) {
    fillColor = _c;
  }
  void setColor( float _grey){
    setColor( color(_grey));
  }
  boolean hitDetect( float mX, float mY) {
    // standard circle hit detection
    //because it has a less than sign it will return true or false
    return ( dist(mX, mY, pos.x, pos.y) < w * .5);
  }
}
