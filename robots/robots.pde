Robot roberto, ruth, rupert, roberta, ross;

void setup() {
  size(800, 700);

  roberto = new Robot(220);
  ruth = new Robot (110);
  rupert = new Robot (55);
  roberta = new Robot (22.5);
  ross = new Robot (11.25);
}

void draw() {
  background(#FB8FB8);

  roberto.drawRobot();
  roberto.easeTowards(mouseX, mouseY);

  ruth.drawRobot();
  ruth.easeTowards(roberto.x, roberto.y);
  
  rupert.drawRobot();
  rupert.easeTowards(ruth.x,ruth.y);
  
  roberta.drawRobot();
  roberta.easeTowards(rupert.x,rupert.y);
  
  ross.drawRobot();
  ross.easeTowards(roberta.x,roberta.y);
}

