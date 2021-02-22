function [p,ier] = poligonale(x,y,t)
n = length(x);
if t < x(1) || t > x(n)
    p = NaN;
    ier=0;
    return
end
i=1;
while t > x(i+1)
    i=i+1;
end
p = (t-x(i+1))/(x(i)-x(i+1))*y(i)+(t-x(i))/(x(i+1)-x(i))*y(i+1);
ier =1;