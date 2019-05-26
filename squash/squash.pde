boolean going = false;
ball b;
paddle p;
boolean test;
float comp = 17.5;
int score = 0;
float final_dist;
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
    b.display();
    b.pop();
    b.move();
    b.coll_dist();
    b.collison();
    b.bounce();
    b.edge();
  } else {
    b.display();
    p.display();
    popline();
  }
}

void mousePressed() {
  going =! going;
}
