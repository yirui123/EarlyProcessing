float a = 0;
float b = 0;

void setup(){
  background(0);
  frameRate(20);
}
void draw() {
  background(255 * noise(a), 255 * noise(a), 255);
  translate(a*0.1, b*0.1);
  rotate(a*0.01);
  if (a>50){
   a = 10;
  }
  if (b>50){
   b = 5;
  }
  float x = mouseX*0.5 + noise(a)*width;
  float y = mouseY*0.5 + noise(b)*height;
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
  
  a = a + 0.1;
  b = b + 0.2;
  
  saveFrame("output/plaid-######.png");
}