int x = 50; // Green ball x pos
int y = 350; // Green ball y pos
int x2 = 1450; // Red ball x pos
int y3 = 50; // Blue ball y pos

// Purple Triangle (x1, y1, x2, y2, x3, y3)
int[] pTriangle = { 0, 100, 50, 5, 100, 100 };

// Cyan Triangle       (x1, y1, x2, y2, x3, y3)
int[] cTriangle = { 1500, 100, 1450, 5, 1400, 100 };

// Brown Rectangle
int[] bRect = { 0, 590, 100, 100, 30 };

int speed1 = 3; // Green ball speed
int speed2 = -3; // Red ball speed
int speed3 = 6; // Blue ball speed
int speedt = 2; // Purple Triangle speed
int speedpt = -2; // Cyan Triangle speed
int speedr = 10; // Brown Rectangle speed

void setup() {
  size(1500, 700);
  println("By Nino :) https://github.com/xninoxx");
}

void draw() {
  background(0, 0, 0);
  balls();
  triangles();
  rects();
  shapes_text();
}

void balls() {
  // Move balls
  x += speed1;
  x2 += speed2;
  y3 += speed3;

  // Checking if Green and Red balls collide (Distance from radius <= 100)
  if (x2 - x <= 100) {
    speed1 = -3; // Green ball goes left
    speed2 = 3;  // Red ball goes right
  }

  // Checking if Blue ball collides with Green or Red balls
  float distGreen = dist(750, y3, x, 350);
  float distRed = dist(750, y3, x2, 350);

  // Bounce blue ball if it touches green or red ball and is moving towards the center
  if ((distGreen <= 100 || distRed <= 100) && ((y3 < 350 && speed3 > 0) || (y3 > 350 && speed3 < 0))) {
    speed3 = -speed3; // Reverse speed (bounce)
  }

  // Checking if the balls are hitting the edge of the screen and bounces back
  if (x <= 50) {
    speed1 = 3;  // Green ball goes right
  }
  if (x2 >= 1450) {
    speed2 = -3; // Red ball goes left
  }
  if (y3 >= 650) {
    speed3 = -6; // Blue ball goes up
  } else if (y3 <= 50) {
    speed3 = 6;  // Blue ball goes down
  }

  // Draw Green ball
  fill(0, 255, 0);
  ellipse(x, y, 100, 100);

  // Draw Red ball
  fill(255, 0, 0);
  ellipse(x2, 350, 100, 100);

  // Draw blue ball
  fill(0, 0, 255);
  ellipse(750, y3, 100, 100);
}

void triangles() {
  // Move Purple Triangle
  pTriangle[0] += speedt;
  pTriangle[2] += speedt;
  pTriangle[4] += speedt;

  // Move Cyan Triangle
  cTriangle[0] += speedpt;
  cTriangle[2] += speedpt;
  cTriangle[4] += speedpt;

  // Draw Purple triangle
  fill(100, 0, 255);
  triangle(pTriangle[0], pTriangle[1], pTriangle[2], pTriangle[3], pTriangle[4], pTriangle[5]);

  // Draw Cyan Triangle
  fill(100, 255, 255);
  triangle(cTriangle[0], cTriangle[1], cTriangle[2], cTriangle[3], cTriangle[4], cTriangle[5]);

  // Checking if Purple triangle reaches 600 pixels X or hits left edge, and bounces back
  if (pTriangle[0] >= 600) {
    speedt = -2; // Purple Triangle goes left
  }
  if (pTriangle[0] <= 0) {
    speedt = 2;  // Purple Triangle goes right
  }

  // Checking if the Cyan triangle reaches 900 pixels X or hits right edge, and bounces back
  if (cTriangle[0] <= 900) {
    speedpt = 2; // Cyan triangle goes right
  }
  if (cTriangle[0] >= 1500) {
    speedpt = -2;
  }
}

void rects() {
  // Move Brown Rect
  bRect[0] += speedr;

  // Checking if Blue ball collides with Brown Rectangle
  float distBrown = dist(750, y3, bRect[0] + 50, bRect[1] + 50);

  // Bounce Brown Rectangle if it touches the Blue ball
  if (distBrown <= 100) {
    speedr = -speedr;
  }
  
  fill(101, 67, 33);
  rect(bRect[0], bRect[1], bRect[2], bRect[3], bRect[4]);

  // Checking if Purple triangle reaches 600 pixels X or hits left edge, and bounces back
  if (bRect[0] >= 1400) {
    speedr = -10; // Purple Triangle goes left
  }
  if (bRect[0] <= 0) {
    speedr = 10;  // Purple Triangle goes right
  }
}

void shapes_text() {
  // Text for Green ball
  fill(0, 0, 0);
  textSize(35);
  textAlign(CENTER, CENTER);
  text("Ball 1", x, y);

  // Text for Red ball
  fill(0, 0, 0);
  textSize(35);
  textAlign(CENTER, CENTER);
  text("Ball 2", x2, 350);

  // Text for Blue ball
  fill(0, 0, 0);
  textSize(35);
  textAlign(CENTER, CENTER);
  text("Ball 3", 750, y3);

  // Text for Purple triangle
  fill(0, 0, 0);
  textSize(15);
  textAlign(CENTER, CENTER);
  text("Triangle 1", pTriangle[2], 75);

  // Text for Cyan triangle
  fill(0, 0, 0);
  textSize(15);
  textAlign(CENTER, CENTER);
  text("Triangle 2", cTriangle[2], 75);

  // Text for Brown Rect
  fill(255, 255, 255);
  textSize(35);
  textAlign(CENTER, CENTER);
  text("Rect 1", bRect[0] + 50, bRect[1] + 50);
}

