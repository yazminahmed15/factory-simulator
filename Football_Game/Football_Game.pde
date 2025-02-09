belt conv1;
Package box;


final int PLAYING =0;
final int FINISHED =1;
int gameMode= PLAYING;
int addCount=0;

ArrayList<Balls> ballsList = new ArrayList<>();

void setup(){
  size(900, 600);
  conv1 = new belt();
  box = new Package(900-950);
 
  
  for(int i=0; i<20; i++) {
    int randomX = (int) random (0,950);
    int randomY = (int) random (250,height-100);
    ballsList.add( new Balls (randomX, randomY,50));
 }
}

void draw(){
if(gameMode == PLAYING) {
background(26, 132, 111);

conv1.update();
box.update();


for(int i =0; i < ballsList.size(); i++) {
 Balls thisBall = ballsList.get(i);
 thisBall.update(); 
 
 if (box.crash(thisBall)) {
   ballsList.remove( thisBall);
    addCount++;

        if (addCount >= 3) {
          addCount ++;
         
        }
   }
}
   
    textSize(20);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Score: " + addCount, width / 2, 30);
    
  //if (box.x+ box.box.width<=0 && addCount<3){
  //  gameMode = FINISHED;
  //}
}

    if (addCount>5 && box.x == width) {
  gameMode=FINISHED;
   println("Game Over");
}


  
}






  
