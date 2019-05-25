
ball b;
void setup() {
  b = new ball();
  size(320, 640);
}

void draw() {
  background(0);
  paddle();
  //For one ball- display,check if touches edges , check if collides, score.
  b.display();
  //b.edge();
  //b.collision();
}
