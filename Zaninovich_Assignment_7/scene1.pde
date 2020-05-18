void scene1(){
  //translation and rotation
    translate(camX1,camY1,camZ1);
  
  rotateX(radians(rotX1));
   rotateY(radians(rotY1));
    rotateZ(radians(rotZ1));
  
  //box container
  stroke(0);
  noFill();
  box(boundary * 2); //size of box
  
  shape(sun,2600,0); //set position of sun
}
