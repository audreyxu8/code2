//80 points: Make one class that has the option for circular or square buttons in its constructor statement
//30 points: Have a button that's inactive until you press another button
//50 points: Have a button that launches some fireworks
//50 points: Have different "spaces" or "screens" with separate buttons for each one (repeatable)
//75 points: Make a button that doesn't activate until it is dragged to a certain location
//20 - ?? points: Make buttons that do cool effects (repeatable)
//10 - ?? points (per button): Cool Button Icons

Button button;


void setup(){
  size(800,500);
  background(0);
  button = new Button();
}

void draw(){
  
  button.circDisplay(100);
  button.squareDisplay(100);
  button.squareRollover(100);
  
  
}
