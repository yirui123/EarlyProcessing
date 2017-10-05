float time = 0;

void setup() {
  size(800, 400);
  background(0);
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);
  float x = 0;
  while ( x < width ) {
    stroke(random(255), random(255), random(255), 70);
    point(x, height*noise(x/100, time));
    x = x + 0.2;
  }
  
  float y = 0;
  while (y < width) {
    stroke(random(122), random(255), 255, 10);
    line(y, 350 + 50 * noise(y / 100, time), y, height);
    y = y + 1;
  }
  time = time + 0.1;
  
  //saveFrame("output/wavvves-########.png");
}