class ball {
  int circleX; 
  int circleY;
  int spaceX = 1;
  int spaceY = 1;
  boolean collision;
  void coll_dist() {
    final_dist = dist(circleX, circleY, mouseX, 600);
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
      println("Game Over, Your score was:" + score);
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
    if ( collision == false ) {
      //println("false");
    } else {
      println("true");
      score++;
      spaceX = spaceX * -1;
      spaceY = spaceY * -1;
    }
  }

  void collison() {
    if (final_dist > comp) {
      collision = false ;
    } else {
      collision = true ;
    }
  }
}
