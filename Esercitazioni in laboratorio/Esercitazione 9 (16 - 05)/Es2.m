%<>
clc
clear all
f= @(x,y) [y(2); 0.1*(1-y(1)^2)*y(2)-y(1)];
x_0=0;
x_N=1;
y_0=[1;0];
for k=1:3
    N=10^k;
    [x,y] = Eulero_esp_system(f,x_0,y_0,x_N,N);
    plot(x,y(:,1),'linewidth',2)
    hold on
    pause
end