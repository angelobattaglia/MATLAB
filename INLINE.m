%INLINE MI PERMETTE DI STAMPARE DUE FUNZIONI SU UN UNICO GRAFICO!!;
f1=inline('x.^2');
f2=inline('(x-1).^2');
x=linspace(0,2);
y1=f1(x);
y2=f2(x);
plot(x,y1,x,y2);
