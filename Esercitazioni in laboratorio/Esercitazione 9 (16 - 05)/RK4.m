function [x,y] = RK4(f,x_0,x_N,N) %metodo runge-kutta del quarto ordine
h=(x_N-x_0)/N;
x=(x_0:h:x_N);
y=zeros(N+1,1);
for n=1:N
    k1=f(x(n),y(n));
    k2=f(x(n)+h/2,y(n)+h/2*k1);
    k3=f(x(n)+h/2,y(n)+h/2*k2);
    k4=f(x(n)+h,y(n)+h*k3);
    y(n+1)=y(n)+h/6*(k1+2*k2+2*k3+k4);
end
end