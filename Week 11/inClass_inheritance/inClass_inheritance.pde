Triangle t;
Circle c;
Square s;

int numShapes = 42;
//array style
//Shape [] shapes = new Shape [numShapes];

//arrayList style
ArrayList<Shape> polys = new ArrayList<Shape>();

void setup () {
  size(500, 500);
  for (int i = 0; i<numShapes; i++){
      switch (i%3){
        case 0:
        //shapes[i] = new Triangle(random(width), random(height), 40, 40);
        polys.add (new Triangle(random(width), random(height), 40, 40));
        break;
        case 1:
        //shapes[i] = new Circle(random(width), random(height), random(10,100);
        polys.add (new Circle(random(width), random(height), random(0,100)));
        break; 
        case 2:
        //shapes[i] = new Square(random(width), random(height), 60, 30);
        polys.add (new Square(random(width), random(height), 60, 30));
        break;
      }
  }
  
  //t = new Triangle(random(width), random(height), 40, 40);
  //c = new Circle( 100, 150, 40, 40);
  //s = new Square( 300,200, 60, 30);
  noStroke();
}
void draw() {
  background(0);
  
  //for( Shape s : shapes){
  //  s.display();
  //}
    for( Shape s : polys){
    s.display();
  }
  
  //t.display();
  //c.display();
  //s.display();
  
  println( c.hitDetect(mouseX, mouseY) );
}

void mousePressed(){
  boolean isRemoved = false; 
  for (int i = 0; i < polys.size(); i++ ){
    Shape s = polys.get(i);
    if (s.hitDetect(mouseX,mouseY)){
    polys.remove(i);
    isRemoved = true;
    println("U Got one");
    }
  }
  if (!isRemoved){
      polys.add (new Triangle(mouseX, mouseY, 40, 40));
  }
}
  
  
