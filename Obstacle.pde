class Obstacle
{
  float x;
  float y;
  float xLength;
  float yLength;
  float xDefault;
  float xTem;
  float yTem;
  float xLengthTem;
  float yLengthTem;
  float speed;
  float counter;
  float counter1;
  PImage obstacle;
  Obstacle(float x1, float y1, float xLength1, float yLength1, float speed1,  float frequently, PImage obstacle1)
  {
    x=x1;
    y=y1;
    xTem=x1;
    yTem=y1;
    xLength=xLength1;
    yLength=yLength1;
    xLengthTem=xLength1;
    yLengthTem=yLength1;
    speed=speed1;
    obstacle=obstacle1;
    counter=frequently;
    counter1=0;
  }
  void update()
  {
    counter1++;
    if(counter1>counter)
    {
      x-=speed;
      xLength-=speed;
    }
    if(x==0)
    {
      x=xTem;
      xLength=xLengthTem;
      counter=0;
    }
  }
  void draw()
  {
    image(obstacle,x,y);
  }
}
