boolean going;
ball b;
paddle p;
int score = 0;
void setup() {
  b = new ball();
  p = new paddle();
  size(320, 640);
  println("Click to begin the game");
}

void draw() {
  background(0);
  popline();
  if (going) {
    p.display();
    //For one ball- display,check if touches edges , check if collides, score.
    b.display();
    //need on for movement called b.move- should also include accelerate
    //b.pop
    b.move();
    b.edge();
    //b.collision();
  } else {
    b.display();
    p.display();
    popline();
  }
}

void mousePressed() {
  going =! going;
}
