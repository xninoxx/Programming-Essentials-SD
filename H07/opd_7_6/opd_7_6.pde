size(400, 600);  
background(255); 
fill(255);        
stroke(0);      

int x = 180;          
int grootte = 35;     

for (int i = 0; i < 10; i++) {
  int y = 50 + i * grootte;
  
  rect(x, y, grootte, grootte); 
}
