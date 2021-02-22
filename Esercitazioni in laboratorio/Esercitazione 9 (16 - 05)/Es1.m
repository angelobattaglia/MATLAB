clc
clear all
f= @(x,y) -y+x+1;
sol=@(x) x+exp(-x); %soluzione esatta del pbm che uso per il confronto
x_0=0;
x_N=1;
y_0=1;
z=linspace(0,1);
for k=1:3
    N=10^k;
    [x,y] = Eulero_esp(f,x_0,y_0,x_N,N);
    plot(z,sol(z),'b',x,y,'r*','linewidth',2)
    err(k)= abs(sol(x(end))-y(end));
    pause
end