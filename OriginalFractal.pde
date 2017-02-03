public void setup()
{
	size(500,500);
	background(0);
}
public void draw()
{
	fill(142,156,200,25);
	thefractal(100,150,180);
	fill(255,255,255,25);
	fractal(100,150,90);
	fill(128,128,128,25);
	myfractal(100,250,180);
	fill(255,255,255,5);
	ellipse(400,50,50,50);

}
public void fractal(int x, int y, int n)
{
	if(n<=20)
	{
		//rect(x,y,n,n);
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
		//rect(x,y,n,n);
		triangle(x, y, n, n, x+n, y+n);
	}
	else {
		myfractal(x,y,n/2);
		myfractal(x+n/2,y,n/2);
		myfractal(x+n/2,y-n/2,n/2);
	}
}
public void thefractal(int x, int y, int n)
{
	if(n<=20)
	{
		//ellipse(x,y,n*2,n/2);
		triangle(x, y, n, n, x+n, y+n);
	}
	else {
		thefractal(x+n/2,y+n,n/2);
		//thefractal(x-n/2,y+n,n/2);
		thefractal(x+n,y+n/6,n/2);
		thefractal(x+n/2,y+n/8,n/2);
		thefractal(x,y,n/2);
	}
}
