void setup() {
  size(500, 300, P3D);
  colorMode(HSB, 10);
  noStroke();
  float x = 0;
  while (x<width) {
    float y = 0;
    while (y<height) {
      float v = sin(x/30 + y/20)*sin(x/13 - y/23);
      float h = map(v, -1, 1, 0, 10);
      stroke(h, 8, 2);
      ellipse(x, y, v, h);
      y=y+1;
    }
    x=x+1;
  }
}

void draw() {
  //background(0);
  float a = 0;
  float r = 0;
  translate(mouseX, mouseY, map(noise(a), 0, 1, -400, 300));
  rotateY(r);
  box(50);
  a  = a + 0.01;
  r = r + 0.02;
}