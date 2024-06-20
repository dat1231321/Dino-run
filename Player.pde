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
  boolean spaceIsDown;
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
    if(y<100)
    {
      check=true;
    }
    if(spaceIsDown&&check==false)
    {
      y-=jumpForce;
      yLength-=jumpForce;
    }
    else if(y<yDefault)
    {
      y+=jumpForce;
      yLength+=jumpForce;
      check=true;
    }
    else
    {
      check=false;
    }
    
  }
  void draw()
  {
    image(dino,x,y);
  }
}
