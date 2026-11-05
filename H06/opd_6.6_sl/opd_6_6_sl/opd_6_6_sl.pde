size(600,600);
background(0);

fill(255);
rect(200,100,200,400);

fill(128);
circle(300,200,100);

fill(128);
circle(300,300,100);

fill(128);
circle(300,400,100);

int stand = 3;

if (stand == 1) {
  fill(255,0,0);
  circle(300,200,100);
}
else if (stand == 2){
  fill(255,265,0);
  circle(300,300,100);
}
else if(stand == 3){
  fill(0,255,0);
  circle(300,400,100);
}
