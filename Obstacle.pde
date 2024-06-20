class Obstacle
{
  float x;
  float y;
  float xLength;
  float yLength;
  float xDefault;
  float speed;
  float counter;
  float counter2;
  PImage obstacle;
  Obstacle(float xLength1, float yLength1, float speed1, PImage obstacle1)
  {
    x=1600;
    y=800;
    xLength=xLength1;
    yLength=yLength1;
    speed=speed1;
    obstacle=obstacle1;
    counter=random(300, 900);
    
  }
  void update()
  {
    counter--;
    if (counter<0)
    {
      if (x>=0)
      {
        x-=speed;
        xLength-=speed;
      } else
      {
        counter=random(300, 900);
      }
    }
  }
}
