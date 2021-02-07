public void setup()
{
  size(600,600);
}
int x = 300;
int y = 300;
int len = 600;
int r = (int)(Math.random()*255);
        int g = (int)(Math.random()*255);
       int  b = (int)(Math.random()*255);
                int  rr = (int)(Math.random()*255);
        int gg = (int)(Math.random()*230);
       int  bb = (int)(Math.random()*255);
       int  rrr = (int)(Math.random()*235);
       int  ggg = (int)(Math.random()*255);
       int  bbb = (int)(Math.random()*235);
public void draw()
{
  background(0);
  sierpinski(x,y,len);
}
void mouseWheel(MouseEvent event)//optional
{
  double t = event.getCount();
  len += 75*t;
  int r = (int)(Math.random()*255);
        int g = (int)(Math.random()*255);
       int  b = (int)(Math.random()*255);
                int  rr = (int)(Math.random()*255);
        int gg = (int)(Math.random()*230);
       int  bb = (int)(Math.random()*255);
       int  rrr = (int)(Math.random()*235);
       int  ggg = (int)(Math.random()*255);
       int  bbb = (int)(Math.random()*235);
  fill(r,g,b);
  sierpinski(x,y,len/1);
 sierpinski(x,y,len/2);
 fill(rr,gg,bb);
 sierpinski(x,y,len/3);
 sierpinski(x,y,len/4);
 fill(rrr,ggg,bbb);
 sierpinski(x,y,len/5);
 sierpinski(x,y,len/6);
 sierpinski(x,y,len/7);
 sierpinski(x,y,len/8);
 sierpinski(x,y,len/9);
 sierpinski(x,y,len/10);
 sierpinski(x,y,len*2);
 sierpinski(x,y,len*3);
 
 
 
  
  
    
  
  

}

public void sierpinski(int realX, int realY, int len) 
{
  int x = realX - ( len / 4 );
  int y = realY + (len / 4);
  fill(255);
  if (len <= 9) {
    fill(rr,gg,bb);
    triangle(x, y, x+len, y, x +len/2,y-len);
  } else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);

  }
}
