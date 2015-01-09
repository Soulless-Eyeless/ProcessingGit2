void setup() {
  size(640, 480);
  background (250, 0, 128);
  rectMode (CENTER);
  //frameRate (2);
  fill (128, 250, 0, 18);
  noStroke();
}

void draw () {
  if (mousePressed){
    rect (mouseX, mouseY, 40, 40);
  }
}


