void nav1(){
  if(keyPressed){
    if(key==CODED){
      if(keyCode ==UP){
        rotX1++; //increase x rotation      
      }
      if(keyCode ==DOWN){
        rotX1--; //decrease x rotation      
      }
      if(keyCode ==LEFT){
        rotY1++; //increase y rotation      
      }
      if(keyCode ==RIGHT){
        rotY1--; //decrease y rotation      
      }
    
    }
      if(key =='w'){
        camZ1+=5; //increase navigation z position by 5
      }
      if (key=='s'){
        camZ1-=5; //decrease navigation z position by 5
      }
  }
  
}
