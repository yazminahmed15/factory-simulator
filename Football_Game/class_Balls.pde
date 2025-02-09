class Balls{
  
  float x;
  float y;
  float speedX=2;
  int diamater=50;
  float dragSpeed = 1;
  PImage ball = loadImage("ball1.png");
  boolean drop=false;
  
  Balls(float tempX,float tempY, int diameter){
    this.x = tempX;
    this.y = tempY;
    this.diamater = diameter;
  }
  
  void update() {
  render();
  move();
  dragImage();
  }

void render (){
  image(ball,this.x,this.y);
  }

void move(){
  x=x-speedX;
  if(x<0)
   {
    x=width;
   }

 }
 
 void dragImage(){
 
       if(dist(mouseX, mouseY, this.x, this.y)< ball.width/2){
          if (mousePressed && !drop) {
              drop = true;
          }
          
          if (drop){
            this.x += (mouseX - this.x)* dragSpeed;
            this.y += (mouseY - this.y)* dragSpeed;
          }
          
          if (!mousePressed) {
            drop = false;
          }
   
 }
   
}
}
  
  
  
  
  
