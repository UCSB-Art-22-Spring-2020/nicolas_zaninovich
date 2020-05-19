class particle{
  // variables
  float x,y;
  float size;
  float speedX,speedY;
  float r,g,b;
  
  //constructor
  
  particle(float x_, float y_, float size_, float speedX_, float speedY_,float r_,float g_,float b_){
    x=x_;
    y=y_;
    size=size_;
    speedX=speedX_;
    speedY=speedY_;
    r=r_;
    b=b_;
    g=g_;
    
  }
  //methods
  
  void display(){
    strokeWeight(size);
    stroke(r,g,b);
    point(x,y);
    x=x+speedX;
    y=y+speedY;    
  }
  
}

particle p;
void setup(){
  size(600,600);
   p = new particle(width/2, height/2, 50, -1, -1, random(15, 70), random(170, 255), random(15, 70));

  
}

void draw(){
  background(0);
  p.display();
  
}
