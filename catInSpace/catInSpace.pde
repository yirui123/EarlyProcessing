float[] x = new float[100];
float[] y = new float[100];
float[] speed = new float[100];
float moveCat = random(width);
float r = 0;
PImage cat;

void setup() {
  cat = loadImage("data/cat.png");
  size(500, 400);
  
  background(0);
  stroke(255);
  
  //frameRate(8);
  //noCursor();
  strokeWeight(3);
  //image(cat, mouseX, mouseY);

  int i = 0;
  while(i < 100) {  
    x[i] = random(0, width);
    y[i] = random(0, height);
    speed[i] = random(1, 5);
    i = i + 1;
  }
}

void draw() {
  fill(255, random(255), random(255), 20);
  rect(0, 0, width, height);

  // draw triangle
  //triangle(mouseX, mouseY-6, mouseX, mouseY+6, mouseX+30, mouseY);
  
  int i = 0;
  while(i < 100) {
    float co = map(speed[i], 1, 5, 100, 255);
    stroke(co);
    strokeWeight(speed[i]);
    point(x[i], y[i]);
  
    x[i] = x[i] - speed[i] / 2;
    if(x[i] < 0) {
      x[i] = width;
    }
    
    i = i + 1;
  }
  
 
  rotate(r);
  float CatSize = random(120, 140);
  image(cat, sin(mouseX)+mouseX, cos(mouseY)+mouseY, CatSize, CatSize);
  fill(r, 20);
  r = r + 1;
  if (r > 100) {
    r = 0;
  } 
}