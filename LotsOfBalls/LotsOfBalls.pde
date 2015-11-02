//declare variables
float x, y, velX, velY, diam;
float x2, y2, velX2, velY2, diam2;

void setup() {
  //set size of canvas
  size(800, 600);
  
  

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  x2 = 400;
  y2 = 400;
  velX2 = random(-10,-10);
  velY2 = random(-10,-10);
  diam2 = 20;
}

void draw() {
  //draw background to cover previous frame
  background(287);

  //draw ball
  fill(0,255,255);
  ellipse(x, y, diam, diam);
  

  //add velocity to position
  x += velX;
  y += velY;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
  
  ellipse(x2, y2, diam2, diam2);
  
  x2 += velX2;
  y2 += velY2;
  
  if (x2 + diam2/2 >= width) {
    velX2 = -abs(velX2);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x2 - diam2/2 <= 0) {
    velX2 = abs(velX2);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y2 + diam2/2 >= height) {
    velY2 = -abs(velY2);
  } else if (y2 - diam2/2 <= 0) {
    velY2 = abs(velY2);
  }
}