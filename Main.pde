void setup()
{
  size(1600,1000);
}
void draw()
{
  PImage assets;
  background(#E3FFFB);
  fill(#E1E8AD);
  rect(0,600,1600,1000);
  assets=loadImage("assets.png");
  Player p1 = new Player(300, 500, 100, 100, 15, assets.get(0,0,100,100));
}
void keyPressed()
{
  if(key==' ')
  {
    p1.spaceIsDown=true;
  }
}
