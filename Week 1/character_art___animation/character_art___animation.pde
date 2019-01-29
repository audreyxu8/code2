//80 points: Program an object that moves to your mouse over time.
//20 points: Have that object rotate to point to your mouse then move.
//30 points: Have the object only move to your mouse when you click.
//30 points: Have the object move over 3 seconds, no matter what the distance is
//20 points: Have the object ease in to your mouse position
//20 points: Create character art for your object
//30 points: Animate your character
PShape cat, head, earOne, earTwo, nose;
float a, b;

void setup() {
  size(800, 800);
 
  cat = createShape(GROUP);

  head = createShape(ELLIPSE, width/2, height/2, 180, 200); 
  head.setFill(color(100));
  earOne = createShape(ELLIPSE, 344, 327, 60, 60); 
  earOne.setFill(color(80));
  earTwo = createShape(ELLIPSE, 450, 327, 60, 60); 
  earTwo.setFill(color(80));
  nose = createShape(TRIANGLE, 370, 402, 430, 402, 400, 430); 
  nose.setFill(color(0));

  cat.addChild(head);
  cat.addChild(earOne);
  cat.addChild(earTwo);
  cat.addChild(nose);
}

void draw() {
  background(0);
  println(mouseX, mouseY);

  //a = lerp(a, mouseX, 0.05);
  //b = lerp(b, mouseY, 0.05);


  //translate(a, b);
  shape(cat);
  
  if (mousePressed==true){
   fill(random(0-255));
   ellipse(width/2+20, height/2-25, 30, 40);
   ellipse(width/2-20, height/2-25, 30, 40);
   arc(400, 450, 30, 80, 0, radians(180));
   
  }
}
