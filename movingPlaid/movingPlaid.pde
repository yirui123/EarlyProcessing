void setup(){
  background(0);
  frameRate(12);
}
void draw() {
  background(0);
  
  float x = random(100);
  float y = random(80);
  //horizontal line
  stroke(255, 0 , 0);
  line(0,y, 99,y);
  stroke(0, 255 , 0);
  line(0,y+2, 99,y+2);
  stroke(0, 255 , 255);
  line(0,y+12, 99,y+12);
  //vertical line
  stroke(255, 255 , 0);
  line(x,0, x,99);
  stroke(0, 0, 255);
  line(x-10,0, x-10,99);
  
  saveFrame("output/plaid-######.png");
}