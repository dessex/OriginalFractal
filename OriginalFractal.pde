public void setup()
{
size(800,800);
noLoop();
}
public void draw()
{
fractal(50,50,20);

}
public void mouseDragged()//optional
{

}
public void fractal(int x, int y, float len) 
{
if (len<1){
 beginShape();
  vertex(x*(len), (y-50)*(len));
  vertex((x+14)*(len),(y -20)*(len));
  vertex((x+47)*(len),(y -15)*(len));
  vertex((x+23)*(len), (y+7)*(len));
  vertex((x+29)*(len), (y+40)*(len));
  vertex((x)*(len), (y+25)*(len));
  vertex((x-29)*(len), (y+40)*(len));
  vertex((x-23)*(len), (y+7)*(len));
  vertex((x-47)*(len),(y -15)*(len));
  vertex((x-14*(len)),(y -20)*(len));
  endShape(CLOSE);
}
else{
  fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
  beginShape();
  vertex(x*(len), (y-50)*(len));
  vertex((x+14)*(len),(y -20)*(len));
  vertex((x+47)*(len),(y -15)*(len));
  vertex((x+23)*(len), (y+7)*(len));
  vertex((x+29)*(len), (y+40)*(len));
  vertex((x)*(len), (y+25)*(len));
  vertex((x-29)*(len), (y+40)*(len));
  vertex((x-23)*(len), (y+7)*(len));
  vertex((x-47)*(len),(y -15)*(len));
  vertex((x-14)*(len),(y -20)*(len));
  endShape(CLOSE);
  fractal(x,y,len-0.2);
}
}
