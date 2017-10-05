float r = 0;
void setup(){
  size(400,300);
  background(0);
  noStroke();
  smooth();
  
  float c = 0;

  while (c < 50) {
    fill(random(255));
    rect(100,-10,50,5);
    rect(200,-10,25,5);
    rotate(0.1);
    c = c + 2;
  }
}

void draw(){
  translate(width/2, height/2);
  //change the relative position of x and y for the shape
  fill(255);
  rotate(r);
  float circle_size = random(5, 25);
  ellipse(100 + r, 10, circle_size, circle_size);
  fill(r, 4);
  rect(0, 0, width, height);
  r = r + 0.2;
  if (r > 200) {
    r = 0;
  }
  println(r);
  
}