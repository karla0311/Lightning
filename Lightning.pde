int startX = 200;
int startY = 320;
int endX;
int endY;
int stop = 0;

void setup()
{
  size(600,600);
  strokeWeight(3);
  background(#cedff5);
}

void draw()
{
  while(stop<1){
  shape();
  }
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256), 100);
  //while(endX <= 601){
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*20) - 9;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    if (keyPressed == true){
      background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      shape();
    }
  //}
}

void mousePressed()
{
  startX = 200;
  startY = 320;
  endX = 0;
  endY = 320;
  stop = 0;
}

void shape(){
  int r = (int)(Math.random()*191);
  int g = (int)(Math.random()*221);
  stroke(r,g,255);
  fill(r,g,255);
  ellipse(130, 320, 160, 120);
  triangle(80,320,10,270,10,370);
  fill(0);
  ellipse(175,305,20,20);
  fill(255,0,0);
  noStroke();
  triangle(190, 315, 210, 315, 200, 330);
  stop = stop + 1;
}
