// at home
// at school 
// at work 

/*
        home   school  work   boo's house
Home     .3     .3     .2         .2
School   .3     .1     .3         .3
Work     .7      0     .15        .15
Boo's    .1     .2     .3         .4

*/

int home = 0;
int school = 1; 
int work = 2; 
int boo = 3; 
String[] places = { "Home", "School", "Work", "Boos"};
int STATE = 1; //1 = school

int numStates = 4;
float [][] movementChance = {
  {.3, .3, .2, .2},
  {.3, .1, .3, .3},
  {.7, 0, .15, .15},
  {.1, .2, .3, .4},
};

//println(movementChance[0][1]);

float rand = random(1); 
float currentChance = 0; 
float[] whereToGoPercent = movementChance[STATE];

for(int i = 0; i<whereToGoPercent.length; i++){
  currentChance += whereToGoPercent[i];
  if(rand < currentChance){
    STATE = i; 
    break; 
  }
}

println(places[STATE]);
