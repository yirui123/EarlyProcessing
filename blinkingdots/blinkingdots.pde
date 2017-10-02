void setup(){
  size(400, 400);
  background(0);
  noStroke();
  frameRate(24);
}

void draw(){
  fill(0, 20);
  //fill(gray, alpha) opacity of the fill; the opacity controls overlay of dots
  rect(0, 0, width, height);
  fill(random(256), random(256), random(256));

  ellipse(random(width), random(height), 50, 50);
  ellipse(random(width), random(height), 30, 30);
  ellipse(random(width), random(height), 10, 10);
  ellipse(random(width), random(height), 3, 3);
  
  //saveFrame("output/blinkingDots-######.png");
}