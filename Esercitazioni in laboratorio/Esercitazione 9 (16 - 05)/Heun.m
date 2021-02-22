function [x,y] = Heun(f,x_0,x_N,N)
h=(x_N-x_0)/N;
x=(x_0:h:x_N);
y=zeros(N+1,1);
for n=1:N
    k1=f(x(n),y(n));
    k2=f(x(n)+h,y(n)+h*k1);
    y(n+1)=y(n)+h/2*(k1+k2);
end
end