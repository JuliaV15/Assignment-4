PVector shipPos = new PVector(0,0);

PImage bob;
PImage wawa[];
PImage edgard;
PImage edgardKitBL;

void setup() {
  background(#090B43);
  size(400, 400);
  bob = loadImage("bob.png");
  edgard = loadImage("edgard.png");
  edgardKitBL = loadImage("edgardKitBL.png");
  wawa = new PImage[22];
  for(int i = 0; i < 20; i++){
    String filename = "a"+(i+1)+".png";
    wawa[i] = loadImage(filename);
  }
}

void draw() {
   background(#090B43);
   imageMode(CENTER);
   image(edgardKitBL, 300, (frameCount*50 % 200000)- 4000, 250, 250);
   pushMatrix();
   translate(300, (frameCount/3 % 2000) - 200);
   if(frameCount % 600 < 30)
     rotate(frameCount*2);
   image(edgard, 0,0, 250, 250);
   popMatrix();
   image(bob,200,200, 50, 50);
   image(wawa[frameCount/6 % 20], 100, 100, 100, 100);
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
