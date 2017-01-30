public void setup()
{
	size(500,500);
	background(0);
}
public void draw()
{
	fractal(0,50,100,50,180);

}
public void fractal(int x, int y, int w, int h, int n)
{
	if(n<=20||h<=20)
	{
		rect(x+50,y+50,w,h);
	}
	else {
		fractal(x+n/2,y+n,w+n/2,h+n/2,n/2);
		fractal(x+n/2,y+n,w+n/4,h+n/4,n/2);
		fractal(x+n/4,y+n/6,w+n/6,h+n/6,n/2);
		fractal(x+n/2,y+n/8,w+n/8,h+n/8,n/2);
		fractal(x+n,y+n,w+n/10,h+n/16,n/2);
	}
}