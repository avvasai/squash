boolean going;
ball b;
void setup() {
  b = new ball();
  size(320, 640);
}

void draw() {
  background(0);
  if (going){
  paddle();
  //For one ball- display,check if touches edges , check if collides, score.
  b.display();
  //b.edge();
  //b.collision();
  }
  else{
   println("The game is paused"); 
  }
}

void mousePressed(){
 going =! going; 
}
