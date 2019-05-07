// Smoothin' and Lerpin
// look at easings.net/en 

float lerpAmount = 0;

float xStart = 20;
float xEnd = 440;

float yStart = 40;
float yEnd = 300;

color zeroColor = color(230, 30, 100);
color oneColor = color(56, 130, 225);

float lengthInMillis = 5000;
int startTime = 0; // set on mouse click 

void setup () {
  size(600, 400);
  noStroke();
  smooth();
}

void draw() {
  background(27, 0, 52);


  float x = lerp(xStart, xEnd, lerpAmount);
  //total distance - start = distance, then give me a percentage of that and add it tot the start 
  float y = (yEnd - yStart) * lerpAmount + yStart;

  color lerpFill = lerpColor(zeroColor, oneColor, lerpAmount);
  fill(lerpFill);
  ellipse(x, y, 30, 30);

  //percentage 

  //lerpAmount += .005;
  ////min = give me the smaller number out of the two 
  //lerpAmount = min(lerpAmount, 1);
  println(lerpAmount); 
  
  float 


   lerpAmount = returnEaseAmount();
  //lerpAmount = 1-pow( 1-returnEaseAmount(), 3);

  /* // if you want to do some springy stuff, ElasticEaseOut:
   float time = returnEaseAmount();
   float springyness = .5; // lower number is more springy
   lerpAmount = pow(2, -10*time) * sin((time-springyness/4)*(2*PI)/springyness) + 1;
   */
}

float returnEaseAmount() {
  // localTime is to see where to start the function
  float localTime = millis()-startTime;
  // divide the part by the total for a percentage:
  float toReturn = localTime/lengthInMillis;
  // clamp the percentage to 1. (Beyond 1 means it doesn't stop)
  toReturn = min(toReturn, 1);
  return toReturn;
}
void mouseClicked() {
  startTime = millis();
}
