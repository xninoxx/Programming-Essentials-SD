void setup() {
  frameRate(1);
  size(800, 200);
}

void draw() {
  background(0, 0, 0); 
  tijd();
}

void tijd() {
  textSize(40);
  fill(255, 255, 255);
  text("het is nu " + hour() + " uur, " + minute() + " minuten en " + second() + " seconden.", 40, 100);
} 
