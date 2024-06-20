class Player
{
  float x;
  float y;
  float xLength;
  float yLength;
  float jumpForce;
  float yDefault;
  float counter;
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
    counter=300;
  }
  void update()
  {
    counter--;
    if(spaceIsDown&&counter<=0)
    {
      y-=jumpForce;
      yLength-=jumpForce;
    }
    else if(y<yDefault)
    {
      y+=5;
      yLength+=5;
    }
    else if(counter<0)
    {
      counter=300;
    }
  }
  void draw()
  {
    image(dino,x,y);
  }
}
