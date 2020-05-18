//Art 22 Week 7 Assignment
//Date: May 12, 2020
//Author: Nick Zaninovich

import peasy.*;
PeasyCam cam; //initalize camera object

PShape earth;
PImage img;

PShape sun;
PImage img1;

PShape moon;
PImage img2;

particle p; //initialize partcle named p

ArrayList<particle>plist=new ArrayList<particle>(); //array list created to hold particles

int boundary=3000; //boundary is 2100
int total=1000;//1000 total particles

float rotX,rotY,rotZ, camX,camY,camZ; //rotations and translations of navigation
float rotX1,rotY1,rotZ1, camX1,camY1,camZ1;
float rotX2,rotY2,rotZ2, camX2,camY2,camZ2;

void setup(){
  size(800,800,P3D); //size of window
  
  img=loadImage("earth.jpg"); //loads image of earth
  earth=createShape(SPHERE, 80); //earth made into a sphere
  earth.setTexture(img); //texture is set
  
  img1=loadImage("sun.jpg");//load image of sun
  sun=createShape(SPHERE,1500);//sun made into a sphere
  sun.setTexture(img1);//texture is set
  
  img2=loadImage("moon.jpg"); //load image of the moon
  moon=createShape(SPHERE,30); //moon made into a sphere
  moon.setTexture(img2); //texture is set
  
  cam=new PeasyCam(this,800); 
  
  frameRate(30); //30 frames per second
  
   for(int i=0; i <total; i++){
plist.add(new particle(random(-boundary, boundary),
random(-boundary, boundary) , 
random(-boundary, boundary), 
10,
random(-2,2), random (-2,2), random (-2,2)));
}
} //random location of particles

void draw(){
  background(0); //black background
  
  if(mousePressed){
    directionalLight(115,115,115, 0,0,1); //if mouse is pressed, different lighting will be shown
    directionalLight(255,255,255,0,0,-1);
  }
  
  scene(); //run scene function
  scene1();
  scene2();

  nav(); // run nav function
  nav1();
  nav2();
  for(particle p: plist){ //display particles
    p.display();
  }
}
