class paddle {
  void display() {
    if (going) {
      strokeWeight(2);
      fill(255);
      rectMode(CENTER);
      if (mouseX == 0) {
        rect(30, 600, 30, 10, 5);
      } else {
        rect(mouseX, 600, 30, 10, 5);
      }
    } else {
      strokeWeight(2);
      fill(255);
      rectMode(CENTER);
      rect(width/2, 600, 30, 10, 5);
    }
  }
}

void popline() {
  strokeWeight(2);
  stroke(255);
  line(0, height, width, height);
  //line(width/2,0,width/2,height);
}

boolean collision(float dist, float comp) {
  if (dist > comp) {
    return false;
  } else {
    return true;
  }
}
