float r = 0;
void setup(){
  size(400,300);
  background(0);
  noStroke();
  smooth();
  
  float c = 0;

  //while (c < 50) {
  //  fill(random(255));
  //  rect(100,-10,50,5);
  //  rect(200,-10,25,5);
  //  rotate(0.1);
  //  c = c + 2;
  //}
}

void draw(){
  fill(random(255), random(255), random(255));
  rotate(r);
  float circle_size = random(5, 35);
  rect(1 + r, 1, circle_size, circle_size);
  fill(0+r, 10);
  rect(0, 0, width, height);
  r = r + 1;
  if (r > 500) {
    r = 0;
  }
  println(r);
}