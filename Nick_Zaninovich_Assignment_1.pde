// Assignment 1 Art 22
// Date: April 4, 2020
// Author: Nick Zaninovich


void setup(){
  size(600,600);// creates a window and 600 is the size of the pixels
  
}


void draw(){
  //background(255); // since "//" cancels the background, the point markings go everywhere
  ellipse(300,300,77,97); // (x-axis, y-axis, width, height)
  
  stroke(150,255,144,150); //(red, green, blue, transparency) used to determine color of ellipse
  strokeWeight(30); // determines thickness of ellipse and point
  
  fill(60); // fills color within ellipse
  
  point(mouseX,mouseY); // creates a point on window
  
  if (mouseX < 200 || mouseX > 400){ // if the mouse goes between 0 to 200 and 400 to 600, the ellipse will be green
    stroke(20,220,40,40);
 
  }
    
   else{
     stroke(255,255,255,50); // if the mouse goes between 200 to 400, the ellipse will be white
   }
}
