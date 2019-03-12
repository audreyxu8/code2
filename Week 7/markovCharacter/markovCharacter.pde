float[][] movementChance = {
  {.25, .25, .25, .25}, 
  {.25, .25, .25, .25}, 
  {.25, .25, .25, .25}, 
  {.25, .25, .25, .25}, 
};

float[] xPos ={0, 125, 250, 375, 500};
float[] yPos ={0, 125, 250, 375, 500};

int legX = 3; 
int legY = 3; 
int legTotal = legX * legY; 


int currentSprite = 0; 

PImage [] legSprite;


int LEG_CHANGE = 0;

int STATE = LEG_CHANGE;



void setup() {
  size (500, 500);

  legSprite = new PImage[legTotal];

  PImage legSheet = loadImage("leg-change-blue.png");

  int legWidth = legSheet.width / legX; 
  int legHeight = legSheet.height / legY;

  int index = 0; 

  for (int y = 0; y < legY; y++) {
    for (int x = 0; x < legX; x++) {
      legSprite[index] = legSheet.get(x * legWidth, y * legHeight, legWidth, legHeight);
      legSprite[index].resize(150, 150); 

      index++;
    }
  }
}

void draw() {
  background(255);

  showLegChange();

  frameRate(15);
}


void showLegChange() {
  for ( int i = 0; i<16; i++) {
    float rand = random(1); 
    float current = 0; 
    float[]direction = movementChance[STATE];
    for (int j = 0; i<direction.length; i++) {
      current += direction[j];
      image(legSprite[currentSprite], xPos[j], yPos[i]);
      currentSprite++;
      currentSprite %= legTotal;
      if(rand<current){
        STATE = i;
      }
    }
  }
}
