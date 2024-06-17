class Player
{
  float x,y,xLength,yLength,jumpForce,yDefault;
  PImage dino;
  boolean spaceIsDown;
  Player(float a, float b, float c, float d, float e, PImage f)
  {
    x=a;
    y=b;
    yDefault=b;
    xLength=c;
    yLength=d;
    jumpForce=e;
    dino=f;
  }
  void update()
  {
    if(spaceIsDown)
    {
      y-=jumpForce;
      yLength-=jumpForce;
    }
    else if(y<yDefault)
    {
      y+=5;
      yLength+=5;
    }
  }
  void draw()
  {
    image(dino,x,y);
  }
}
