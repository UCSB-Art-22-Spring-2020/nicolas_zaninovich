//Art 22
//Assignment 2
//Date:April 11, 2020
//Author: Nick Zaninovich

int m,n; //set variables
int h,s,b; //set variables for color 

void setup(){ 
  size(700,700); //set size for window
  m=width/3; //set m to one third of width
  n=height/3; //set n to one third of height
  
}

void draw(){
  background(0,0,0); //black background
  
  h=220;
  s=110;
  b=130; //h,s,b alter color of shape
  
  noStroke(); //no outline
  fill (m,s,b); 
  rect (330,330,50,50); //size (m,n) and placement (w,h) of shape
  
  if (keyPressed) {
    if(key==CODED) {
      if (keyCode==RIGHT) {
        m+=10;
      }
      if (keyCode == LEFT) { //color changes depending on how much the keyboard arrows are pressed.
        m-=10;
      }
    }
  }

   
  for (int i = 0; i < 750; i++) {
    fill(random(0,57), random(5,255), random (0,64), 90); //random color assigned (red,blue,green,transparency)
    rect (random(350,700), random(0,300), random (5,30), random (5,30)); //size and placement of shape
    
    fill(random(5,255), random (0,57), random (0,64), 80); 
    ellipse (random(0,350), random(400,700), random (5,30), random (5,30));
    
    fill(random(0,64), random (0,57), random (5,255), 70);
    circle (random(0,350), random (0,315), random (5,30));
    
    fill(random(150,175), random (110,175), random (100,120), 90);
    square (random(350,700), random (390,700), random (5,30));
  }
}
