class Player
{
  float x;
  float y;
  float xLength;
  float yLength;
  float jumpForce;
  float yDefault;
  boolean check;
  PImage dino;
  Player(float x1, float y1, float xLength1, float yLength1, float jumpForce1, PImage dino1)
  {
    x=x1;
    y=y1;
    yDefault=y1;
    xLength=xLength1;
    yLength=yLength1;
    jumpForce=jumpForce1;
    dino=dino1;
    check=false;
  }
  void update()
  {
    if (y<200)
    {
      check=true;
    }
    if (spaceIsDown&&check==false)
    {
      y-=jumpForce;
    } else if (y<yDefault)
    {
      y+=jumpForce;
      check=true;
    } else
    {
      check=false;
    }
    if (ob1.x<=x+xLength&&ob1.x>=x&&ob1.y<=y+yLength&&ob1.y>=y)
    {
      isLost=true;
    }
  }
  void draw()
  {
    image(dino, x, y);
  }
}
