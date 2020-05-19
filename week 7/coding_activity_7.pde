import peasy.*;
PeasyCam cam; 

float x,y,z;

void setup(){
  size(600,600,P3D);
  
  cam=new PeasyCam(this, 600);
  
}

void draw(){
  background(0);
  
  translate(width/2, height/2, 0);
  
  rotateX(radians(30));
  rotateY(radians(30));
  rotateZ(radians(30));
  
  stroke(0);
  fill(125);
  
  ellipseMode(CENTER);
  ellipse(0,0,250,130);
  
  fill(150,120,70);
  sphere(50);
  
  pushMatrix();
  translate(x,y,z);
  fill(170,170,235);
  box(30);
  
  popMatrix();
  z++;
  
}
