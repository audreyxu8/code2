//reference https://processing.org/examples/button.html

PVector circPos, rectPos; 
int circSize = 100;
int rectSize = 100; 
color rectColor, circColor, rectHighlight, circHighlight;
boolean overCircle = false; 
boolean overRect = false; 

void setup(){
  size(800,500);
  rectColor = color (255);
  rectHighlight = color (100);
  circColor = color (255);
  circHighlight = color (100);
  circPos = new PVector(width/2+circSize/2+10, height/2);
  rectPos = new PVector(width/2- rectSize-10, height/2-rectSize/2);
  ellipseMode(CENTER);
}

void draw(){
  background (0);
  if (mouseX > rectPos.x && 
    mouseX < rectPos.x + rectSize && 
    mouseY > rectPos.y && 
    mouseY< rectPos.y + rectSize) {
     fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  rect(rectPos.x, rectPos.y, rectSize, rectSize);
  
  if(sqrt(sq(circPos.x) +
     sq(circPos.y)) < circSize/2 ){
       fill(circHighlight);
     }else {
       fill (circColor);
     }
     ellipse(circPos.x, circPos.y, circSize, circSize);
}
