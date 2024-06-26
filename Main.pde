PImage assets;
boolean isLost;
boolean spaceIsDown;
Player p1;
Obstacle ob1;

void setup()
{
  size(1600, 1000);
  assets=loadImage("assets.png");
  p1 = new Player(300, 500, 100, 100, 15, assets.get(0, 0, 100, 100));
  ob1= new Obstacle(1600, 500, 100, 100, 15, 300, assets.get(0, 0, 100, 100));
  isLost=false;
  spaceIsDown=false;
}

void draw()
{
  background(#E3FFFB);
  fill(#E1E8AD);
  rect(0, 600, 1600, 1000);
  if (isLost==false)
  {
    p1.update();
    ob1.update();
  } else
  {
    textSize(75);
    text("OOFED >:0 \nPress space to play again", 800, 300);
  }
  p1.draw();
  ob1.draw();
  if (spaceIsDown&&isLost)
  {
    p1=new Player(300, 500, 100, 100, 15, assets.get(0, 0, 100, 100));
    ob1= new Obstacle(1600, 500, 100, 100, 15, 300, assets.get(0, 0, 100, 100));
    isLost=false;
  }
}
void keyPressed()
{
  if (key==' ')
  {
    spaceIsDown=true;
  }
}
void keyReleased()
{
  if (key==' ')
  {
    spaceIsDown=false;
  }
}
