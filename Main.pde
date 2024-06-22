PImage assets;
Player p1;
Obstacle ob1;

void setup()
{
  size(1600,1000);
  assets=loadImage("assets.png");
  p1 = new Player(300, 500, 100, 100, 15, assets.get(0,0,100,100));
  ob1= new Obstacle(1600, 500, 100, 100, 15, 300, assets.get(0,0,100,100));
}

void draw()
{
  background(#E3FFFB);
  fill(#E1E8AD);
  rect(0,600,1600,1000);
  p1.update();
  p1.draw();
  ob1.update();
  ob1.draw();
}
void keyPressed()
{
  if(key==' ')
  {
    p1.spaceIsDown=true;
  }
}
void keyReleased()
{
  if(key==' ')
  {
    p1.spaceIsDown=false;
  }
}
