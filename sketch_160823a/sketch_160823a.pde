// 1. Find a really hard Where’s Waldo puzzle, save it, and drop it onto this sketch.
  
void setup() {
  PImage waldo = loadImage("maps_future.jpg"); // 2. Change this to match your file name.
  waldo.resize(2000,1000);
  size(waldo.width, waldo.height);
  image(waldo, 0, 0);
}

void draw() {
  println("X: " + mouseX + "Y: " + mouseY);// 3. Use this print statement to find out the coordinates of Waldo
  if ( mousePressed){
 if ( mouseX >= 790 && mouseX <= 820){
   if (mouseY >= 620 && mouseY <= 640){
   println("Waldo Found");
   playWoohoo();
   }
 } else playDoh();
 } // 4. If the mouse is on Waldo, print “Waldo found!”
  }
  // 5. If Waldo is found, also use the method below to play “Woohoo”

  // 6. If the mouse is pressed and they’re not on Waldo, play “Doh”
void playWoohoo() {
  woohoo.stop();
  woohoo.trigger();
}

void playDoh() {
  doh.stop();
  doh.trigger();
}


import ddf.minim.*;
Minim minim = new Minim(this);   
AudioSample doh = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-doh.wav");
AudioSample woohoo = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-woohoo.wav");



