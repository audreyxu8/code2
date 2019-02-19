//15 points: have the square change color back after a certain amount of time
//20 points: Make the square unclickable while the color has changed

//15 points: if you type a letter, have only that square change color
//15 points: have the square change color back after a certain amount of time
//15 points: If you type the same letter while the color is changed, don't do anything


//reference to Week 4 quiz 
//ROLLOver does not work after setting the conditionals for the states in square class
//left the rollover for D, E, F buttons
Square squareA; 
Square squareB;
Square squareC; 
Square squareD; 
Square squareE;
Square squareF;

void setup() {
  size(800, 500);
  background(0);
  squareA = new Square(width/2, height/2, 90, 60);
  squareB = new Square(width/2-100, height/2-80, 130, 60 );
  squareC = new Square(width/2+50, height/2+65, 100, 150);
  squareD = new Square(width/2, height/2-150, 70, 60);
  squareE = new Square(width/2-200, height/2+90, 130, 60 );
  squareF = new Square(width/2+200, height/2-80, 100, 150);
}

void draw() {
  squareA.squareADisp();
  squareB.squareBDisp();
  squareC.squareCDisp();
  squareD.squareDDisp();
  squareE.squareEDisp();
  squareF.squareFDisp();
}

void mouseClicked(){
  squareA.handleClick();
  squareB.handleClick();
  squareC.handleClick();
  //squareD.handleClick();
  //squareE.handleClick();
  //squareF.handleClick();
}
