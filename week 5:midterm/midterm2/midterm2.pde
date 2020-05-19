
float [] shrek= new float[50]; //creating an array with 50 elements

void setup(){
  shrek[0]=7;
  shrek[48]=77;
 
  printArray(shrek);
  
  for (int i=0; i < 50; i++) {
    shrek[i]=(random(0,500));
    
  }
  println(shrek[9]);
   
  
}

void draw(){
}
