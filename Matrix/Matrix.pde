float rot = 0;

void setup() {
  size(400, 400);
  background(100, 200, 50);
  smooth();
  noStroke();
  //fill(0);
  //rectMode(CENTER); // x, y is the center of the rect
}

void draw_rotating_rect(float x, float y, float s, float r) {
  translate(x, y);
  rotate(r);
  rect(0, 0, s, s);
  resetMatrix();
  ///Replaces the current matrix with the identity matrix.
}

void draw() {
  background(100, 200, 50);
  
  //draw_rotating_rect(100, 100, 30, rot*2);
  //draw_rotating_rect(300, 100, 60, rot*random(0.8));
  //draw_rotating_rect(100, 300, 40, rot*random(0.5));
  //draw_rotating_rect(300, 300, 20, rot*0.3);
  
  float x = 0;
  while (x < 8) {
    float y = 0;
    while (y < 8) {
      draw_rotating_rect(50 + x*40, 50 + y*40, 10, rot + x*2 + y*2);
      y = y + 1;
    }
    x = x + 1;
  }
  rot = rot + 0.05;
}