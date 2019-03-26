class Heart {
  // STATES
  int LEG = 0;
  int BLEED = 1;
  int MOUTH = 2;
  int STATE = LEG;

  // Setup Choice Matrix
  String[] stateNames = {"LEG", "BLEED", "MOUTH"};
  float[][] choices = {
    { .4, .5, .1}, 
    { .3, .4, .3}, 
    { .2, .5, .2}, 
  };

  // movement variables
  PVector vel, pos;
  int facingDirection = 1;
  float speed = 3;
  float legSpeed = 5;


  int numLegFrames = 7;
  int legAnimationSpeed = 8;
  PImage[] leg = new PImage[numLegFrames];


  int numBleedFrames = 7;
  int bleedAnimationSpeed = 6;
  PImage[] bleed = new PImage[numBleedFrames];


  int numMouthFrames = 5;
  int mouthAnimationSpeed = 6;
  PImage[] mouth = new PImage[numMouthFrames];

  //standing
  PImage stand = new PImage();
  boolean chooseNewDirection = true;

  //animation handler
  int frameNumber = 0;
  //
  // ———————— ———————— ———————— ———————— ———————— ———————— ———————— CONSTRUCTOR
  //
  Heart() {
    vel = new PVector(0, 0);
    pos = new PVector(random(width), random(height));

    stand = loadImage("leg000.png");

    
    leg[0] = loadImage("leg000.png");
    leg[0].resize(100,100);
    leg[1] = loadImage("leg001.png");
    leg[1].resize(100,100);
    leg[2] = loadImage("leg002.png");
    leg[2].resize(100,100);
    leg[3] = loadImage("leg003.png");
    leg[3].resize(100,100);
    leg[4] = loadImage("leg004.png");
    leg[4].resize(100,100);
    leg[5] = loadImage("leg005.png");
    leg[5].resize(100,100);
    leg[6] = loadImage("leg006.png");
    leg[6].resize(100,100);


   
    bleed[0] = loadImage("bleed000.png");
    bleed[0].resize(100,100);
    bleed[1] = loadImage("bleed001.png");
    bleed[1].resize(100,100);
    bleed[2] = loadImage("bleed002.png");
    bleed[2].resize(100,100);
    bleed[3] = loadImage("bleed003.png");
    bleed[3].resize(100,100);
    bleed[4] = loadImage("bleed004.png");
    bleed[4].resize(100,100);
    bleed[5] = loadImage("bleed005.png");
    bleed[5].resize(100,100);
    bleed[6] = loadImage("bleed006.png");
    bleed[6].resize(100,100);

    
    mouth[0] = loadImage("mouth000.png");
    mouth[0].resize(100,100);
    mouth[1] = loadImage("mouth001.png");
    mouth[1].resize(100,100);
    mouth[2] = loadImage("mouth002.png");
    mouth[2].resize(100,100);
    mouth[3] = loadImage("mouth003.png");
    mouth[3].resize(100,100);
    mouth[4] = loadImage("mouth004.png");
    mouth[4].resize(100,100);
  }

  void update() {
    // Move your character
    pos.add(vel);
    // Wrap Screen
    if (pos.y < 0) {
      pos.y = height;
    }
    if (pos.x > width) {
      pos.x = 0;
    } else if (pos.x < 0) {
      pos.x = width;
    }

    if (chooseNewDirection) { 
      facingDirection = (random(1) < .5) ? 1 : -1;
      chooseNewDirection = false;
    }
    // Handle different movement and state changes:
    switch (STATE) {
    case 1: 
      break;
    case 2: 
      vel = new PVector(0, 0);
      break;
    case 4:
      vel = new PVector(-facingDirection * speed, 0);
    case 0: 
    default:
      STATE = getNewState();
      break;
    case 3:
      vel = new PVector(-facingDirection * speed * .4, -legSpeed);
      break;
    }
  }

  void displayCharacter() {
    pushMatrix();
    translate(pos.x, pos.y);
    scale(facingDirection, 1); 
    //
    // —————————————————————————————— ANIMATION STATE MACHINE
    //
    switch (STATE) {
    case 1: 
      playLegAnimation();
      break;
    case 2: 
      playBleedAnimation();
      break;
    case 3: 
      playMouthAnimation();
      break; 
    case 0: 
    default:
      image(stand, 0, 0);
      break;
    }
    popMatrix();
  }
  void playLegAnimation() {
    image(leg[frameNumber], 0, 0);
    if (frameCount%legAnimationSpeed == 0) {
      frameNumber++;
      if (frameNumber>=numLegFrames) {
        STATE = getNewState();
        chooseNewDirection = true;
      };
    }
  }
  void playBleedAnimation() {
    image(bleed[frameNumber], 0, 0);
    if (frameCount%bleedAnimationSpeed == 0) {
      frameNumber++;
      if (frameNumber>=numBleedFrames) {
        STATE = getNewState();
        chooseNewDirection = true;
      };
    }
  }
  void playMouthAnimation() {
    image(mouth[frameNumber], 0, 0);
    if (frameCount%mouthAnimationSpeed == 0) {
      frameNumber++;
      if (frameNumber>=numMouthFrames) {
        STATE = getNewState();
        chooseNewDirection = true;
      };
    }
  }
  int getNewState() {
    frameNumber = 0;
    float rand = random(1);
    float currentTotal = 0;
    float[] range = choices[STATE];
    for (int i = 0; i<range.length; i++) {

      currentTotal += range[i];
      if (rand < currentTotal) {
        return i;
      }
    }
    return 0;
  }
}
