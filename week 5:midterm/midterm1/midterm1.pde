
float xPos,yPos;
float d;

void setup(){
  size (600,600);
  
  xPos=width/2;
  yPos=height/2;
 
 background (140,14,180);
  
}


void draw(){
  
  ellipse(xPos,yPos,10,75);
 
 if (keyPressed) {
    if (key == CODED) {
      if (keyCode == RIGHT) {
        xPos+=15; 
      }
      if (keyCode == LEFT) { 
        xPos-=15; 
      }
      if (keyCode == UP) { 
        yPos-=15;
      }
      if (keyCode == DOWN) { 
        yPos+=15; 
      }
    }
  }
   if (xPos>width) { 
    xPos=0; 
  }
  if (xPos<0) { 
    xPos=width; 
  }
  if (yPos>height) {
    yPos=0;
  }
  if (yPos<0) {
    yPos=height;
  }
  d = dist(xPos, yPos, 0, 0);
   if (d<200) {
    fill(20, 200, 60, 40);
  }
  if (d>200 && d<400) {
    fill (70, 50, 90, 40);
  }
  if (d>400 && d<600) {
    fill (120, 50, 60, 40);
  }
}
