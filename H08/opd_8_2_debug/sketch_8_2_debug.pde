int x = 0;
int y = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(123, 230, 90);
  x += 5;
  y += 5;
  rect(x, y, 30, 30);
}
