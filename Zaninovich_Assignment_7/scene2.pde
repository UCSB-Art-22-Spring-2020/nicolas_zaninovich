void scene2(){
   //translation and rotation
  translate(camX2,camY2,camZ2);
  
  rotateX(radians(rotX2));
   rotateY(radians(rotY2));
    rotateZ(radians(rotZ2));
  
  //box container
  stroke(0);
  noFill();
  box(boundary * 2); //size of box
  
  shape(moon,-250,0); //position of the moon
   
}
