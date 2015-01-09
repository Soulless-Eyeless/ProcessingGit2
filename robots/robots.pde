void setup() {
  size(800, 700);
//  background(255,0,150);
   background(#FB8FB8);

  translate(width/2,height/2);
  fill(#4AA02C);
  int wHead = 220; //width of head
  int hHead = wHead * 2/3; //height of head
  int rHead = wHead/5; //radius of head
  rectMode(CENTER);
  rect(0,0,wHead,hHead, rHead);
}
