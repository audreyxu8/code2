//25 points: transition the color smoothly for the background

//10 points: Change the text when you click a button
//20 points: Have 4 distinct quotes show up. I sorta got this one down, just can't figure out 
//how to make the text change in mousePressed

// reference https://processing.org/examples/button.html

int rectX, rectY;      
int circleX, circleY;  
int rectSize = 150;    
int circleSize = 150;   
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;

String [] quotes = {
  "Everything in this world is magic, except to the magician.",
  "Don't mind me, just trying to look chivalrous.",
  "Have you ever seen anything so full of splendor?",
  "These violent delights have violent ends.",
};

int index= int(random (0,3));

void setup() {
  size(800, 500);
  rectColor = color(0);
  rectHighlight = color(51);
  circleColor = color(255);
  circleHighlight = color(204);
  baseColor = color(0);
  currentColor = baseColor;
  circleX = width/2+circleSize/2+80;
  circleY = height/2;
  rectX = width/2-rectSize-80;
  rectY = height/2-rectSize/2;
  ellipseMode(CENTER);
}

void draw() {
  update(mouseX, mouseY);
  background(currentColor);
  
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(255);
  rect(rectX, rectY, rectSize, rectSize);
  
  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
  textSize(15);
  text(quotes[index],200,400);

}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}

void mousePressed() {
  if (circleOver) {
    currentColor = color(random(0,255), random(0,255), random(0,255));
    text(quotes[index], 200, 400);
    
  }
  if (rectOver) {
    currentColor = rectColor;
    text(quotes[index], 200, 400);
  }
}
  
  
boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
