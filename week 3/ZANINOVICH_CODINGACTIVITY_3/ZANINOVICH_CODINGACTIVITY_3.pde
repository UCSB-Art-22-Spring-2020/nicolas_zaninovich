//Art 22 Coding Activity 3
//Date: April 16, 2020
//Author: Nick Zaninovich

float xPos, yPos;
float xVel, yVel;
float xDirection, yDirection;
float xGravity, yGravity;

void setup(){
  size (600,800);
  
  xPos=width/2;
  yPos=height/2;
  
  xVel = 3;
  yVel = 3;
  
  xDirection=1;
  yDirection=1;
  xGravity=0.2;
  yGravity=1;
  background (60, 60, 180);
}

void draw (){
   ellipse (xPos, yPos, 20, 20);
 noStroke();
 if(xPos > width || xPos < 1){ //check if we are at the edge of our screen
   xDirection = xDirection * -1; //change direction to the other side (+ to - or vice versa)
 }
    if(yPos > height || yPos < 1) {//check if we are at the edge of our screen
   yDirection = yDirection * -1; //change direction to the other side (+ to - or vice versa)
    }
    
     xVel=xVel*xDirection; // make sure xVel is in the correct direction (right or left)
xPos+=xVel; // add x velocity to our x position
xVel+=xGravity;//add x gravity to x velocity 
 
yVel=yVel*yDirection; // make sure yVel is in the correct direction (up or down)
yPos+=yVel; // add y velocity to our y position 
yVel+=yGravity;//add y gravity to y velocity

    if (keyPressed){//if the key is pressed
      if (key == 'x') //key 'x' 
        xVel = random (5,10); // the set x velocity will be a random number between 5 and 10  
    }   
      if (key == 'y') {//key 'y'
        yVel = random (5,10); // the set y velocity will be a random number between 5 and 10
      }
}
