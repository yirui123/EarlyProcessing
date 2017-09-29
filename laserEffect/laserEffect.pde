void setup(){
  // setup is called only once when the program starts
  background(0);
  frameRate(60);
  // default is 60 (fps) 
}

void draw(){
  // draw function loops forever, until stopped
  //background(random(256),random(256),0);
  // backgroundcolor is used to clear display window  at the beginning of each new frame
  // 0 >> random(256)
  stroke(random(256),random(256),random(256)); //RGB for the shape below
  line(50,50,random(100),random(100)); 
  //x1,y1,(z1)x2,y2,(z2)
  point(random(100),random(100));
  // point is 1px; x, y, z
}

void mousePressed() {
  saveFrame("output/frames####.png");
}