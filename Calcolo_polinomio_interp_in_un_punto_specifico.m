f=@(x) exp(2.*x)-exp(3.*x);
x=linspace(-2,1,14);
y=f(x);
c_6=polyfit(x,y,6);
p_6=polyval(c_6,0)






















