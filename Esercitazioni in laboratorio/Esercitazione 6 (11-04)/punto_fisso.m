function [ x,ier,n ] = punto_fisso( g,x0,nmax,tol )
ier=0;
x(1)=x0;
for n=1:nmax
    x(n+1)=g(x(n));
     if abs(x(n+1)-x(n))<=tol*abs(x(n+1))
        ier=1;
        break
    end
end
end