int x = 50; // Green ball x pos
int y = 350; 
int x2 = 1450; // Red ball x pos
int y3 = 50; // Blue ball y pos

int tx1 = 0;
int ty1 = 100;
int tx2 = 50;
int ty2 = 5;
int tx3 = 100;
int ty3 = 100;

int speed1 = 3; // Green ball speed
int speed2 = -3; // Red ball speed
int speed3 = 6; // Blue ball speed
int speedt = 2; // Triangle speed

void setup() {
  size(1500, 700);
}

void draw() {
  background(0, 0, 0);
  ball();
  ball_text();
}

void ball() {
  // Move the balls and triangle with their own speed
  x += speed1;
  x2 += speed2;
  y3 += speed3;
  
  tx1 += speedt;
  tx2 += speedt;
  tx3 += speedt;

  // Checking if Green and Red balls collide (Distance from radius <= 100)
  if (x2 - x <= 100) {
    speed1 = -3; // Green ball goes left
    speed2 = 3;  // Red ball goes right
  }

  // Checking if Blue ball collides with Green or Red ball
  float distGreen = dist(750, y3, x, 350);
  float distRed = dist(750, y3, x2, 350);
  
  if (distGreen <= 100 || distRed <= 100) {
    // Only bounce if the blue ball is moving towards the center (prevents shaking)
    if (y3 < 350 && speed3 > 0) {
      speed3 = -speed3; // Bounce up
    } else if (y3 > 350 && speed3 < 0) {
      speed3 = -speed3; // Bounce down
    }
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

  // Checking if triangle reaches 600 pixels X or hits left edge, and bounces back
  if (tx1 >= 600) {
    speedt = -2; // Triangle goes left
  }
  if (tx1 <= 0) {
    speedt = 2;  // Triangle goes right
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
  
  // Draw triangle
  fill(100, 0, 255);
  triangle(tx1, ty1, tx2, ty2, tx3, ty3);
}

void ball_text() {
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
}
