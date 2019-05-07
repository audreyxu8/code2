float start = 0; 
float duration = 3000; 
float end = start + duration; 

void setup(){

}

void draw(){
  // millis - start = the time since i clicked 
  // (millis() - start/duration) = percentage on a time based scale 
  // the time since i clicked / total time = %
    println(millis(), millis() - start, duration, (millis() - start/duration));
}

void mousePressed(){
  start = millis();
}
