void scene(){
   //translation and rotation
  translate(camX,camY,camZ); 
  
  rotateX(radians(rotX));
   rotateY(radians(rotY));
    rotateZ(radians(rotZ));
  
  //box container
  stroke(0); 
  noFill();
  box(boundary * 2); //size of box
  
  shape(earth,-400,0); //position of earth
  
}
