class Package {

float x;
final int y=20;
float speedX=1.5;
PImage box = loadImage("BOX1.png");

  Package(int tempX){
  this.x = tempX;
  }
  
  void update(){
    render();
    move();
  }

void render(){
  image(box, x, y);
}
  
  void move(){
  x=x-speedX;
  if(x<0)
  {
    x=width;
  }
  
  }
  
  boolean crash(Balls ball) {
    return abs(this.x -ball.x) < box.width &&abs( this.y - ball.y) < box.height;
}

}
