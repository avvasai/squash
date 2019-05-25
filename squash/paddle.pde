void paddle() {
  strokeWeight(2);
  fill(255);
  rectMode(CENTER);
  if (mouseX == 0) {
    rect(30, 600, 30, 10, 5);
  } else {
    rect(mouseX, 600, 30, 10, 5);
  }
}
