class ball {
  int circleX; 
  int circleY;
  int spaceX = 1;
  int spaceY = 1;
  void display() {
    if (going) {
      ellipse(circleX, circleY, 15, 15);
    } else {
      ellipse(width/2, 587, 15, 15);
    }
  }
    void move() {
    if (going) {
      circleX = circleX + spaceX ;
      circleY = circleY + spaceY ;
    } else {
    }
  }
  void edge() {
    if (circleX > width || circleX < 0) {
      spaceX = spaceX * -1;
    } else if ( circleY > height || circleY < 0) {
      spaceY = spaceY * -1;
    }
  }
  void collision(){
  
  }
  void pop(){
    
  }

}
