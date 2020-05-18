class particle{
float x,y,z; //variables for particles
float size;
float speedX,speedY, speedZ;
  
  particle(float x_, float y_, 
  float z_, float size_, 
  float speedX_, float speedY_, float speedZ_){
    x=x_;
    y=y_;
    z=z_;
    size=size_;
    speedX=speedX_;
    speedY=speedY_;
    speedZ=speedZ_;
    
  }
  //methods
  
  void display(){
 
    strokeWeight(10); //size of particles
    stroke(255); //white
    point(x,y,z); 
    


  }
}
