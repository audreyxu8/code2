// reference https://www.youtube.com/watch?v=xvjrsBC9Vnc&t=221s

// mouth animation has a different amount of rows and columns for the spritesheet, array out of bounds, 
// i tried adding another for loop but still out of bounds? 
// also I made the sprites way too low of a resolution OOPS

int legX = 3; 
int legY = 3; 
int legTotal = legX * legY; 

int bleedX = 3; 
int bleedY = 3; 
int bleedTotal = bleedX * bleedY;

int mouthX = 3; 
int mouthY = 2; 
int mouthTotal = mouthX * mouthY; 

int currentSprite = 0; 
int xPos = width/2; 
int yPos = height/2;

PImage [] legSprite;
PImage [] bleedSprite;
PImage [] mouthSprite; 


int LEG_CHANGE = 0;
int BLEED = 1;
int MOUTH_OPEN = 2;

int STATE = LEG_CHANGE;



void setup() {
  size (500, 500);

  legSprite = new PImage[legTotal];
  bleedSprite = new PImage[bleedTotal];
  mouthSprite = new PImage[mouthTotal];

  PImage legSheet = loadImage("leg-change-blue.png");
  PImage bleedSheet = loadImage("bleedy.png");
  PImage mouthSheet = loadImage("mouth oppen .png");

  int legWidth = legSheet.width / legX; 
  int legHeight = legSheet.height / legY;
  int bleedWidth = bleedSheet.width / bleedX; 
  int bleedHeight = bleedSheet.height / bleedY; 
  int mouthWidth = mouthSheet.width / mouthX; 
  int mouthHeight = mouthSheet.height / mouthY;  

  int index = 0; 

  for (int y = 0; y < legY; y++) {
    for (int x = 0; x < legX; x++) {
      legSprite[index] = legSheet.get(x * legWidth, y * legHeight, legWidth, legHeight);
      legSprite[index].resize(200, 200); 
      bleedSprite[index] = bleedSheet.get(x * bleedWidth, y * bleedHeight, bleedWidth, bleedHeight);
      bleedSprite[index].resize(200, 200);
      index++;
    }
  }

  //for (int y = 0; y < mouthY; y++) {
  //  for (int x = 0; x < mouthX; x++) {
  //    mouthSprite[index] = mouthSheet.get(x * mouthWidth, y * mouthHeight, mouthWidth, mouthHeight); 
  //    index++;
  //  }
  //}
}

void draw() {
  background(255);

  switch (STATE) {
  case 0:
    showLegChange();
    break; 
  case 1:
    showBleed();
    break;
  case 2: 
    //showMouthOpen();
    break;
  }

  frameRate(15);
}

void keyTyped() {
  switch(key) {
  case 'l':
    STATE = LEG_CHANGE;
    break;
  case 'b':
    STATE = BLEED;
    break;
  case 'm':
    STATE = MOUTH_OPEN;
  }
}

void showLegChange() {

  image(legSprite[currentSprite], xPos, yPos);
  currentSprite++;
  currentSprite %= legTotal;

  textAlign(CENTER); 
  textSize(25); 
  fill(0); 
  text("Press b or m!", width/2, height/2+100);
}

void showBleed() {
  image(bleedSprite[currentSprite], xPos, yPos); 
  currentSprite++;
  currentSprite %= bleedTotal;

  textAlign(CENTER); 
  textSize(25); 
  fill(0); 
  text("Press l or m!", width/2, height/2+100);
}

//void showMouthOpen() {
//  image(mouthSprite[currentSprite], xPos, yPos); 
//  currentSprite++;
//  currentSprite %= mouthTotal;
//textAlign(CENTER); 
//textSize(25); 
//fill(0); 
//text("Press l or b!", width/2, height/2+100);
//}
