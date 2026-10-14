size(1200, 600);
background(255, 255, 255);
textAlign(CENTER); // Zorgt dat de tekst netjes onder het midden van elk gezicht staat
textSize(16);

// Startpositie eerste gezicht
int x = 250; 
int y = 300;
String naam;

// Eerste gezicht (Bob - Oranje/Perzik)
naam = "Bob";
fill(255, 200, 150); 
ellipse(x, y, 300, 300);
fill(0, 0, 0);    
ellipse(x - 60, y - 30, 25, 25);  
ellipse(x + 60, y - 30, 25, 25);  
noFill();
arc(x, y + 30, 120, 90, 0.2 * PI, 0.8 * PI); 
fill(0); // Tekstkleur zwart
text("Ik ben " + naam + " en ik sta op x " + x + " en y " + y, x, y + 180);

// Positie aanpassen met korte notatie voor tweede gezicht
x += 350; 

// Tweede gezicht (Fien - Geel)
naam = "Fien";
fill(255, 230, 100); 
ellipse(x, y, 300, 300);
fill(0, 0, 0);    
ellipse(x - 60, y - 30, 25, 25);  
ellipse(x + 60, y - 30, 25, 25);  
noFill();
arc(x, y + 30, 120, 90, 0.2 * PI, 0.8 * PI); 
fill(0);
text("Ik ben " + naam + " en ik sta op x " + x + " en y " + y, x, y + 180);

// Positie aanpassen met korte notatie voor derde gezicht
x += 350; 

// Derde gezicht (Sem - Blauw)
naam = "Sem";
fill(180, 220, 255); 
ellipse(x, y, 300, 300);
fill(0, 0, 0);    
ellipse(x - 60, y - 30, 25, 25);  
ellipse(x + 60, y - 30, 25, 25);  
noFill();
arc(x, y + 30, 120, 90, 0.2 * PI, 0.8 * PI); 
fill(0);
text("Ik ben " + naam + " en ik sta op x " + x + " en y " + y, x, y + 180);
