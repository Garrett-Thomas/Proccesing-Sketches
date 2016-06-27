void setup() {
  size(800, 800);
}

void draw() {
  fill(255,255,0);
  if (mousePressed == true) {
    fill(random(255),random(255),random(255));
  } else {
    fill(255);
  }
  
  ellipse(mouseX,mouseY,400,400);
}
