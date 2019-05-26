boolean going = false;
ball b;
paddle p;
float comp = 17.5;
int score = 0;
void setup() {
  b = new ball();
  p = new paddle();
  size(320, 640);
  println("Click to begin the game");
}

void draw() {
  float final_dist = dist(b.circleX, b.circleY, mouseX, 600);
  background(0);
  popline();
  if (going) {
    p.display();
    b.display();
    b.pop();
    b.move();
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
