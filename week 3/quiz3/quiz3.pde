//reference to an old processing sketch 
ArrayList<Drop> drops;
color b;

void setup(){
  b = color(0, 0, map(height, height, 100, 50,0));
  background(b);
  size(300,800);
  drops = new ArrayList<Drop>();
}

void draw(){
  for(int i=0; i<drops.size(); i++){
    Drop d = drops.get(i);
    d.fall();
    d.gravity();
    d.display(50);
    
    if(d.pos.y > height){
      d.pos.y=0;
      d.pos.x = random(0,300);
    }
  }
  
   drops.add(new Drop());
 
}
