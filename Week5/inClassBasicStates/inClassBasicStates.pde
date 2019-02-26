int START_SCREEN = 0;
int PLAY_SCREEN = 1;
int END_SCREEN = 2;
int MAP_SCREEN = 3;
int STATE = START_SCREEN;
void setup() {
  size(500, 500);
}

//switch is like a super boolean

void draw() {
  // if STATE is = 0, then showStartScreen();
  // u dont use if statement bc faster for the comp cuz u have to run thhru each if statement
  //but this it skips everything else but the actual case
  switch (STATE) {
    case 0: // start screen
      showStartScreen();
    break;
    case 1: // play screen
      showPlayScreen();
    break;
    case 2: // end screen
      showEndScreen();
    break;
    case 3: // map screen
      showMapScreen();
    break;
  }
}
void keyTyped() {
  switch(key) {
    case 'q':
      STATE = START_SCREEN;
    break;
    case 'w':
      STATE = END_SCREEN;
    break;
    case 'e':
      STATE = MAP_SCREEN;
    break;
    case 'r':
      STATE = PLAY_SCREEN;
    break;
  }
}
void showStartScreen(){
  background(200);
  textAlign(CENTER);
  textSize(32);
  text("Loading!", 250, 250);
}
void showPlayScreen(){
  background(200, 200, 10);
  textAlign(CENTER);
  textSize(32);
  text("Playing!", sin(frameCount*.02)*200 + 250, 250);
}
void showEndScreen(){
  background(10);
  textAlign(CENTER);
  textSize(32);
  text("END!", 250, 250);
}
void showMapScreen(){
  background(50, 200, 10);
  textAlign(CENTER);
  textSize(32);
  text("MAP!", 250, 250);
}
