//thank you for the quiz comment
//I had some trouble with the booleans. When I added the conditional as 
// if(upOver(upPos.x, upPos.y, buttonSize.x, buttonSize.y)){} it said it couldn't take 4 floats?
//so I didn't use them

PVector carPos, carSize, upPos, downPos, leftPos, rightPos, buttonSize, velocity;
color carColor, buttonColor, buttonHighlight;
//boolean upOver = false;
//boolean downOver = false;
//boolean leftOver = false;
//boolean rightOver = false;
boolean moving = false;
PShape car, body, lightOne, lightTwo;



void setup() {
  size(800, 500);
  carColor = color(100, 0, 100);
  buttonColor = color(255);
  buttonHighlight = color(100);
  carPos = new PVector(width/2, height/2);
  carSize = new PVector(100, 70);
  upPos = new PVector(10, 10);
  downPos = new PVector(10, 80);
  leftPos = new PVector(10, 150);
  rightPos = new PVector(10, 220);
  buttonSize = new PVector(60, 60);
  velocity = new PVector(20, 20);
  
  
   
  car = createShape(GROUP);
  body = createShape(RECT, carPos.x, carPos.y, carSize.x, carSize.y); 
  lightOne = createShape(ELLIPSE, carPos.x+15, carPos.y+15, 20, 20); 
  lightOne.setFill(color(255,255,0));
  lightTwo = createShape(ELLIPSE, carPos.x+15, carPos.y+57, 20, 20); 
  lightTwo.setFill(color(255,255,0));
  
  car.addChild(body);
  car.addChild(lightOne);
  car.addChild(lightTwo);

  
  
}

void draw() {
  background(50);

  
  //rect(carPos.x, carPos.y, carSize.x, carSize.y); 
  pushMatrix();
  translate(carPos.x-500, carPos.y-300);
  fill(255);
  shape(car);
  popMatrix();

  //rollover state
  if ((mouseX >= upPos.x && mouseX <= upPos.x+buttonSize.x && 
    mouseY >= upPos.y && mouseY <= upPos.y+buttonSize.y)) {
    fill(buttonHighlight);
  } else {
    fill(buttonColor);
  }

  rect(upPos.x, upPos.y, buttonSize.x, buttonSize.y);

  if ((mouseX >= downPos.x && mouseX <= downPos.x+buttonSize.x && 
    mouseY >= downPos.y && mouseY <= downPos.y+buttonSize.y)) {
    fill(buttonHighlight);
  } else {
    fill(buttonColor);
  }
  rect(downPos.x, downPos.y, buttonSize.x, buttonSize.y);

  if ((mouseX >= leftPos.x && mouseX <= leftPos.x+buttonSize.x && 
    mouseY >= leftPos.y && mouseY <= leftPos.y+buttonSize.y)) {
    fill(buttonHighlight);
  } else {
    fill(buttonColor);
  }

  rect(leftPos.x, leftPos.y, buttonSize.x, buttonSize.y);

  if ((mouseX >= rightPos.x && mouseX <= rightPos.x+buttonSize.x && 
    mouseY >= rightPos.y && mouseY <= rightPos.y+buttonSize.y)) {
    fill(buttonHighlight);
  } else {
    fill(buttonColor);
  }

  rect(rightPos.x, rightPos.y, buttonSize.x, buttonSize.y);

  //icons
  fill(0, 0, 100);
  stroke(255);
  triangle(upPos.x, upPos.y+60, upPos.x+buttonSize.x, upPos.y+60, upPos.x+30, upPos.y);
  triangle(downPos.x, downPos.y, downPos.x + buttonSize.x, downPos.y, downPos.x+30, downPos.y+60);
  triangle(leftPos.x, leftPos.y, leftPos.x, leftPos.y + buttonSize.y, leftPos.x + 60, leftPos.y + 30);
  triangle(rightPos.x+60, rightPos.y, rightPos.x+60, rightPos.y + buttonSize.y, rightPos.x, rightPos.y + 30);
 
 translate(carPos.x, carPos.y);

  
  }


void mouseClicked() {
    if ((mouseX >= upPos.x && mouseX <= upPos.x+buttonSize.x && 
    mouseY >= upPos.y && mouseY <= upPos.y+buttonSize.y)) {
    carPos.y=carPos.y-20;
    }
    
    if ((mouseX >= downPos.x && mouseX <= downPos.x+buttonSize.x && 
    mouseY >= downPos.y && mouseY <= downPos.y+buttonSize.y)) {
      carPos.y=carPos.y+20;
    }
    
    
  if ((mouseX >= leftPos.x && mouseX <= leftPos.x+buttonSize.x && 
    mouseY >= leftPos.y && mouseY <= leftPos.y+buttonSize.y)) {
    carPos.x = carPos.x + velocity.x;
  }

  if ((mouseX >= rightPos.x && mouseX <= rightPos.x+buttonSize.x && 
    mouseY >= rightPos.y && mouseY <= rightPos.y+buttonSize.y)) {
    carPos.x = carPos.x - velocity.x;
  }
}
