void setup(){
 
  size(500,500);
}
void draw(){
  if (mousePressed == true) {
    println(mouseX);
    fill(0);
  } else {
    fill(255);
  }
  rect(mouseX - 25,mouseY - 25,random(150), random(150));

}
