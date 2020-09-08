%Soluzioni di sistemi di funzioni per via grafica!!
f=@(x) exp(x).*cos(10.*x);
x=linspace(0,1);
y=f(x);
y_2=0;
figure
plot(x,y,'b',x,y_2,'y','linewidth',2);