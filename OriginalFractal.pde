public void setup()
{
	size(500,500);
	background(0);
}
public void draw()
{
	fill(142,156,200);
	thefractal(200,300,180);
	fill(255,255,255);
	fractal(0,150,90);
	fill(128,128,128);
	myfractal(250,140,180);
}
public void fractal(int x, int y, int n)
{
	if(n<=20)
	{
		rect(x,y,n,n);
		triangle(x, y, n, n, x+n, y+n);
	}
	else {
		fractal(x+n/2,y+n,n/2);
		fractal(x+n/2,y+n,n/2);
		fractal(x+n,y+n/6,n/2);
		fractal(x+n/2,y+n/8,n/2);
		fractal(x,y,n/2);
	}
}
public void myfractal(int x, int y, int n)
{
	if(n<=20)
	{
		rect(x,y,n,n);
		triangle(x, y, n, n, x+n, y+n);
	}
	else {
		//myfractal(x+n/2,y+n,n/2);
		//myfractal(x+n/2,y+n,n/2);
		//myfractal(x+n/4,y+n/6,n/2);
		//myfractal(x+n/2,y+n/8,n/2);
		//myfractal(x,y,n/2);
		myfractal(x,y,n/2);
		myfractal(x+n/2,y,n/2);
		myfractal(x+n/2,y-n/2,n/2);
	}
}
		//sierpinski(x,y,len/2);
		//sierpinski(x+len/2,y,len/2);
		//sierpinski(x+len/4,y-len/2,len/2);
public void thefractal(int x, int y, int n)
{
	if(n<=20)
	{
		ellipse(x,y,n,n);
	}
	else {
		myfractal(x+n/2,y+n,n/2);
		myfractal(x+n/2,y+n,n/2);
		myfractal(x+n,y+n/6,n/2);
		myfractal(x+n/2,y+n/8,n/2);
		myfractal(x,y,n/2);
	}
}