void setup() {
  size(600, 400);
  colorMode(HSB);
  // choose a random background color using Hue, Saturation and Brightness
  background(random(255), random(50, 100), random(50, 100));
  noFill();
  stroke(255, 100);// white no opacity
  frameRate(7);
}

void draw() {
  float i = 0;
  float k = 3;
  while (i < 60) { //drawing 60 circles
    stroke(255, 5);
    ellipse(width/2,height/2, 100+i*4, 100-i*2);
    i = i + 1;
    stroke(255, 1);
    ellipse(width/2,height/2, 150+k, 150-k*2);
    k = k + 2;
  }
  //saveFrame("output/circles-#######.png");
}

void mousePressed() {
  noLoop();
  
  fill(0, 50);
  textSize(30);
  text("Loop stopped",width/2,height/2);
}