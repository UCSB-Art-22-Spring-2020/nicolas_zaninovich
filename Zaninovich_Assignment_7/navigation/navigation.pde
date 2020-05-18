void nav(){
  if(keyPressed){
    if(key==CODED){
      if(keyCode ==UP){
        rotX++; //increase x rotation      
      }
      if(keyCode ==DOWN){
        rotX--; //decrease x rotation      
      }
      if(keyCode ==LEFT){
        rotY++; //increase y rotation      
      }
      if(keyCode ==RIGHT){
        rotY--; //decrease y rotation      
      }
    
    }
      if(key =='w'){
        camZ+=5; //increase navigation z position by 5
      }
      if (key=='s'){
        camZ-=5; //decrease navigation z position by 5
      }
  }
  
}
