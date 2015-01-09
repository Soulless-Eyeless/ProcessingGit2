class Robot {
  float wHead = 220; //width of head
  float x, y;

  Robot(float headWidth) {
    wHead = headWidth;
    x = width/2;
    y = height/2;
  }

  void easeTowards(float x_, float y_) {
    float easing = 0.05;
    x = x * (1-easing) + x_ * easing;
    y = y * (1-easing) + y_ * easing;
  }

  void drawRobot() {
    pushMatrix();
    translate(x,y);

    //draw head
    noStroke();
    fill(#4AA02C);
    float hHead = wHead * 2/3; //height of head
    float rHead = wHead/5; //radius of head
    rect(-wHead/2, -hHead, wHead, hHead, rHead);

    //draw Eyes
    fill(#B93B8F);
    float eyeDiameter = wHead/7;
    ellipse(-wHead/4, -hHead/2, eyeDiameter, eyeDiameter);
    ellipse(wHead/4, -hHead/2, eyeDiameter, eyeDiameter);

    //draw mouth
    fill(#FCAF00);
    float wMouth = wHead * 0.25;
    float hMouth = hHead * 0.1;
    rect(-wMouth/2, -hHead * 0.2, wMouth, hMouth);
    popMatrix();
  }
}

