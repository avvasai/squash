class ball {
  int circleX; 
  int circleY;
  int spaceX = 1;
  int spaceY = 1;
  boolean 
  //Make a constructor for acceptin the value of collision
  ball(boolean temp) {
  
  
  
  }
  void display() {
    if (going) {
      ellipseMode(CENTER);
      ellipse(circleX, circleY, 15, 15);
    } else {
      ellipseMode(CENTER);
      ellipse(width/2, 587, 15, 15);
    }
  }
  void pop() {
    if (circleY == height) {
      int size = 15;
      int temp = circleX;
      while (size != 0) {
        ellipse(temp, height, size, size);
        size = size - 5;
      }
      println("Game Over");
      going = false;
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
    } else if (circleY < 0) {
      spaceY = spaceY * -1;
    } else if (circleY == height) {
      pop();
    }
  }
  void bounce() {
    if (collision(final_dist , comp) == false ) {
      println("false");
    } else {
      println("true");
      score++;
      spaceX = spaceX * -1;
      spaceY = spaceY * -1;
    }
  }

}
