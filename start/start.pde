PVector shipPos = new PVector(0,0);

void setup() {
  background(#090B43);
  size(400, 400);
}

void draw() {
   background(#090B43);
  shipPos.x = mouseX - 200;
  shipPos.y = mouseY - 375;
  pushMatrix();
  translate(shipPos.x, shipPos.y);
  // pink ship wings
  stroke(0);
  strokeWeight(3);
  fill(#DB0DAF);
  triangle(200, 335, 100, 400, 300, 400);
  // pink ship hull
  fill(#DB0DAF);
  triangle(200, 275, 160, 410, 240, 410);
// ship window
  fill(#B2ECFC);
  ellipse(200, 335, 30, 50);
  noStroke();
  fill(255);
  ellipse(210, 335, 5, 15);
//missile launchers
  stroke(0);
  fill(#A01D86);
  rect(155, 355, 20, 60);
  rect(225, 355, 20, 60);
  popMatrix();
  
}
