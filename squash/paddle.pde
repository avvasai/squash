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
