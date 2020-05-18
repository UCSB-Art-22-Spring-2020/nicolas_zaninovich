void nav2(){
  if(keyPressed){
    if(key==CODED){
      if(keyCode ==UP){
        rotX2++; //increase x rotation      
      }
      if(keyCode ==DOWN){
        rotX2--; //decrease x rotation      
      }
      if(keyCode ==LEFT){
        rotY2++; //increase y rotation      
      }
      if(keyCode ==RIGHT){
        rotY2--; //decrease y rotation      
      }
    
    }
      if(key =='w'){
        camZ2+=5; //increase navigation z position by 10
      }
      if (key=='s'){
        camZ2-=5; //decrease navigation z position by 10
      }
  }
  
}
