//30 points: Have a button that's inactive until you press another button
//50 points: Have different "spaces" or "screens" with separate buttons for each one (repeatable)
//75 points: Make a button that doesn't activate until it is dragged to a certain location
//20 - ?? points: Make buttons that do cool effects (repeatable)
//10 - ?? points (per button): Cool Button Icons

Button button;
ArrayList<Firework> fireworks;
PVector circPos, squarePos;
float circSize, squareSize;
color bgColor = color(random(100));
boolean buttonIsClicked = false;

void setup() {
  size(800, 500);
  background(bgColor);
  button = new Button();
  fireworks = new ArrayList<Firework>();
  circPos = new PVector(width/2 +300, height/2);
  squarePos = new PVector(width/2-300, height/2-50);
}

void draw() {

  button.circDisplay(100);
  button.squareDisplay(100);
  button.squareRollover(100);

  if (buttonIsClicked) {
    bgColor = color(100, 100, 100);
  } else {
    bgColor = color(random(100));
  }
}

void detection() {
  if (mouseX > squarePos.x && 
    mouseX < squarePos.x + squareSize && 
    mouseY > squarePos.y && 
    mouseY< squarePos.y + squareSize) {
    bgColor = color(100, 100, 100);
  } else {
    bgColor = color(random(100));
  }
}

void mouseClicked() {
  if (mouseX > squarePos.x && 
    mouseX < squarePos.x + squareSize && 
    mouseY > squarePos.y && 
    mouseY< squarePos.y + squareSize) {
    buttonIsClicked = !buttonIsClicked;
  }

  if (buttonIsClicked == true) {
    for (int i=0; i<fireworks.size(); i++) {
      Firework f = fireworks.get(i);
      f.display(random(0, 50));
      f.fly();
    }
    fireworks.add(new Firework());
  }
  println(buttonIsClicked);
}


//void mouseClicked() {
//  button.detection();
//  for (int i=0; i<fireworks.size(); i++) {
//    Firework f = fireworks.get(i);
//    f.display(random(0, 50));
//    f.fly();
//  }

//  fireworks.add(new Firework());
//}
