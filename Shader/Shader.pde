//references: https://processing.org/examples/texturesphere.html
//https://processing.org/tutorials/pshader/

int ptsW, ptsH;

PImage img;

int numPointsW;
int numPointsH_2pi; 
int numPointsH;

float[] coorX;
float[] coorY;
float[] coorZ;
float[] multXZ;
float angle;

PShader selShader; 
boolean useLight; 


PShader texlightShader;
PShader bwShader; 
PShader edgesShader; 
PShader embossShader; 



void setup() {
  size(1000, 700, P3D);
  background(0);
  noStroke();
  img=loadImage("cutie.png");
  ptsW=100;
  ptsH=100;
  // Parameters below are the number of vertices around the width and height
  initializeSphere(ptsW, ptsH);

  texlightShader= loadShader("texfrag.glsl", "texvert.glsl");

  bwShader = loadShader("bwfrag.glsl");
  edgesShader = loadShader("edgesFrag.glsl");
  embossShader = loadShader("embossfrag.glsl");

  selShader = texlightShader;
  useLight = true;
 
  println("Vertex lights, texture shading");
  

}


void draw() {
  background(0);
  
  pushMatrix();
  translate(0,0,0);
  String s = "Go through the Shaders with 1, 2, 3 and 4! :D <3 ";
  fill(200,0,150); 
  textSize(10);
  text( s, 10, 10, 70, 80);
  popMatrix();
  
  camera(width/2+map(mouseX, 0, width, -2*width, 2*width), 
    height/2+map(mouseY, 0, height, -height, height), 
    height/2/tan(PI*30.0 / 180.0), 
    width, height/2.0, 0, 
    0, 1, 0);

  pushMatrix();
  translate(width/2, height/2, 0);
  rotateY(angle);
  angle+= 0.01;
  textureSphere(200, 200, 200, img);
  popMatrix();

  if (useLight) {
    pointLight(255, 255, 255, width/2, height/2, 200);
  }    
  shader(selShader);
  
}

void initializeSphere(int numPtsW, int numPtsH_2pi) {

  // The number of points around the width and height
  numPointsW=numPtsW+1;
  numPointsH_2pi=numPtsH_2pi;  // How many actual pts around the sphere (not just from top to bottom)
  numPointsH=ceil((float)numPointsH_2pi/2)+1;  // How many pts from top to bottom (abs(....) b/c of the possibility of an odd numPointsH_2pi)

  coorX=new float[numPointsW];   // All the x-coor in a horizontal circle radius 1
  coorY=new float[numPointsH];   // All the y-coor in a vertical circle radius 1
  coorZ=new float[numPointsW];   // All the z-coor in a horizontal circle radius 1
  multXZ=new float[numPointsH];  // The radius of each horizontal circle (that you will multiply with coorX and coorZ)

  for (int i=0; i<numPointsW; i++) {  // For all the points around the width
    float thetaW=i*2*PI/(numPointsW-1);
    coorX[i]=sin(thetaW);
    coorZ[i]=cos(thetaW);
  }

  for (int i=0; i<numPointsH; i++) {  // For all points from top to bottom
    if (int(numPointsH_2pi/2) != (float)numPointsH_2pi/2 && i==numPointsH-1) {  // If the numPointsH_2pi is odd and it is at the last pt
      float thetaH=(i-1)*2*PI/(numPointsH_2pi);
      coorY[i]=cos(PI+thetaH); 
      multXZ[i]=0;
    } else {
      //The numPointsH_2pi and 2 below allows there to be a flat bottom if the numPointsH is odd
      float thetaH=i*2*PI/(numPointsH_2pi);

      //PI+ below makes the top always the point instead of the bottom.
      coorY[i]=cos(PI+thetaH); 
      multXZ[i]=sin(thetaH);
    }
  }
}

void textureSphere(float rx, float ry, float rz, PImage t) { 
  // These are so we can map certain parts of the image on to the shape 
  float changeU=t.width/(float)(numPointsW-1); 
  float changeV=t.height/(float)(numPointsH-1); 
  float u=0;  // Width variable for the texture
  float v=0;  // Height variable for the texture

  beginShape(TRIANGLE_STRIP);
  texture(t);
  for (int i=0; i<(numPointsH-1); i++) {  // For all the rings but top and bottom
    // Goes into the array here instead of loop to save time
    float coory=coorY[i];
    float cooryPlus=coorY[i+1];

    float multxz=multXZ[i];
    float multxzPlus=multXZ[i+1];

    for (int j=0; j<numPointsW; j++) { // For all the pts in the ring
      normal(-coorX[j]*multxz, -coory, -coorZ[j]*multxz);
      vertex(coorX[j]*multxz*rx, coory*ry, coorZ[j]*multxz*rz, u, v);
      normal(-coorX[j]*multxzPlus, -cooryPlus, -coorZ[j]*multxzPlus);
      vertex(coorX[j]*multxzPlus*rx, cooryPlus*ry, coorZ[j]*multxzPlus*rz, u, v+changeV);
      u+=changeU;
    }
    v+=changeV;
    u=0;
  }
  endShape();
}

void keyPressed() {
  if (key == '1') {
    selShader = bwShader;
    useLight = false;

  } else if (key == '2') {
    println("Edge detection filtering");
    selShader = edgesShader;
    useLight = false;
 
  } else if (key == '3') {
    println("Emboss filtering");
    selShader = embossShader;
    useLight = false;

  } else if (key =='4'){
    selShader = texlightShader; 
  }
}
