class Player
{
  float x,y,xLength,yLength,jumpForce;
  PImage dino;
  boolean spaceIsDown=false;
  Player(float a, float b, float c, float d, float e, PImage f)
  {
    x=a;
    y=b;
    xLength=c;
    yLength=d;
    jumpForce=e;
    dino=f;
  }
  void update()
  {
    if(spaceIsDown==true)
    {
      float jump=jumpForce;
      if(jump<jumpForce * -1)
      {
        y+=jump;
        jump--;
      }
      spaceIsDown=false;
    }
  }
  void draw()
  {
    image(dino,x,y);
  }
}
