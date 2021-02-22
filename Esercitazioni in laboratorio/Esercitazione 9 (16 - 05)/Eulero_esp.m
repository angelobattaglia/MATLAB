function [x,y] = Eulero_esp(f,x_0,y_0,x_N,N)
h=(x_N-x_0)/N;
x=(x_0:h:x_N)';
y=zeros(N+1,1);
y(1)=y_0;
for n=1:N
    fn=f(x(n),y(n));
    y(n+1)=y(n)+h*fn;
end
end