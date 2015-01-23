int MAX_BRANCH_LEVEL = 8;
float angleInDegrees = 15;
float trunkHeightMultiplier = 0.1;
float angleShiftInDegrees = 0;
void setup() {
  size(600, 600);
}

void draw() {
  background(#FB8FB8);
  translate(width/2, height*9/10);
  scale(1, -1);

  if (keyPressed) {
    if (key == 'a') {
      --angleShiftInDegrees;
    }
    if (key == 'd') {
      ++angleShiftInDegrees;
    }
  }
  drawTree(0);
}

void drawTree(int level) {
  if (level > MAX_BRANCH_LEVEL) {
    return;
  }
  float trunkThickness = 20 * pow(0.8, level);
  strokeWeight(trunkThickness);
  fill(#6A1A4A);
  stroke(#6A1A4A);
  float trunkHeight = height * 0.1;
  float angleShiftInRadians = angleShiftInDegrees * PI/180;
  line(0, 0, 0, trunkHeight);
  translate(0, trunkHeight);
  float angleInDegrees = 10;
  float angleInRadians = angleInDegrees * PI/180 ;
  pushMatrix();
  rotate(angleInRadians + angleShiftInDegrees);
  drawTree(level + 1);
  popMatrix();
  rotate(-angleInRadians - angleShiftInDegrees);
  drawTree(level + 1);
}

