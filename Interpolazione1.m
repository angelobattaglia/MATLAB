%Intepolazione mattutina #1
n=7;
x=linspace(-1,1,n); %nodi
x1=linspace(-1,1);
f= @(x) exp(x)./((x.^2)+1); %funzione
y=f(x);
y1=f(x1);
c=polyfit(x,y,n-1); 
p=polyval(c,x);
p1=polyval(c,x1);
err=norm(y1-p1,inf)
