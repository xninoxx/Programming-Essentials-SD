size(500, 500);

float lengte = 1.8;
int gewicht = 110;

int BMI = round(gewicht / (lengte * lengte)); 

fill(0);
textSize(20);

text("Met een gewicht van " + gewicht + " kg en een lengte van " + (lengte * 100) + "\n cm, is jouw BMI " + BMI, 20, 50);
