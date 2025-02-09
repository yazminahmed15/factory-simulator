class belt{
 int x;
 int y;
 int psX;
  

void update(){
  render();
  move();
}
  
void render(){
  stroke(110);
  fill(98,122,71);
  rect(psX,y, width, 200);
  rect(psX+width, y, width, 200);
  } 

void move(){
  
 psX=psX-4;
 if(psX == -width)
   {
    psX=0;
   }
}

}
