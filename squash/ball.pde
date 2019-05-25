class ball {
  int circleX = width/2; 
  int circleY = 590;
  int spaceX = 1;
  int spaceY = 1;
  void display() {
    ellipse(circleX, circleY, 15, 15);
  }
  void edge(){
    if (circleX > width || circleX < 0) {
    spaceX = spaceX * -1;
  } else if ( circleY > height || circleY < 0) {
    spaceY = spaceY * -1;
  }
  }
}
