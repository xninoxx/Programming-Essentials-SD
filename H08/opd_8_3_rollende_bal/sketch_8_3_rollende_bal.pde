int x = 0;

void setup() {
  size(1500, 700);
}

void draw() {
  background(0, 0, 0);

  x += 290;
  ellipse(x, 350, 150, 150);
  
  if (x >= 1500) {
    x = 0;
  }
}
