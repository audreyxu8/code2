//20 Points: Click the circle and change color
//30 Points: Cycle colors when clicked from red, green, blue, and back again (or any three colors)
//5 Points: Each extra color beyond three (repeatable) (The colors still have to be in a specific order)
//20 Points: Have a rollover that changes the stroke
//25 Points: Put this button in a class
//25 Points: Have more than 10 buttons
//10 Points: Have each button have a random size
//30 Points: Line up your circles in a grid
//20 Points: Have the mouse Drag over the circles to change them in addition to click
Circle original;
int arrayLength = 50;
Circle[] circles= new Circle[arrayLength];

void setup() {
  size(800, 500);
  background(0);
  original = new Circle(width/2, height/2);

  for (int i=0; i<arrayLength; i++) {
    circles[i] = new Circle(random(width), random(height));
  }
}

void draw() {
  //original.display();

  for (int i=0; i<arrayLength; i++) {
    //circles[i].display();
    circles[i].display(i%10*width/10, i/30 * height/10);
    circles[i].mousePressed();
  }
}
