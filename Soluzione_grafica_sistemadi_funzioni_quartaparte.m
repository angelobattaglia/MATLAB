%Due funzioni che si incontrano
x=linspace(0,10,10000);
y1=log(x);
y2=atan(x-1);
y3=0*x;
figure
plot(x,y1,'r',x,y2,'b',x,y3,'p','linewidth',2);
