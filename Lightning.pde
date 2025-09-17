int xStart = 250;
int yStart = 0;
void setup(){
  size(500,500);
  background(0);
}
void draw(){
  strokeWeight(10);
  int red = (int)(Math.random()*250);
  int green = (int)(Math.random()*250);
  int blue = (int)(Math.random()*250);
  stroke(red,green,blue);
  int x = xStart+(int)(Math.random()*40)-20;
  int y = yStart+(int)(Math.random()*30);
  fill(red,green,blue);
  ellipse(x,y,40,40);
  if(y >= 500){
     fill(200,100,0);
     noStroke();
     ellipse(xStart,yStart,150,150);
     xStart=(int)(Math.random()*250+125);
     yStart=0;
     fill(0,0,0,40);
     rect(0,0,500,500);
  }
  else{   
     xStart = x;
     yStart = y;
  }
}

