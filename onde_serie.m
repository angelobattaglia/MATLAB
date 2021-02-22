close all
xmax=1;
dx=1e-2;
T=0.5;
dt=1e-2;
c=6;

x=0:dx:xmax;
t=0:dt:T;

k=3;
u0=@(x) sin(k*pi*x);

figure('Name','Soluzione per serie dell''equazione delle onde','NumberTitle','Off')
for i=1:length(t)
    u=cos(c*k*pi*t(i))*sin(k*pi*x);
    plot(x,u,'LineWidth',2);
    title(sprintf('$t=%.2f$',t(i)))
    axis([0 xmax -1 1])
    xlabel('$x$')
    ylabel('$u(x,t)$')
    set(0,'DefaultTextInterpreter','latex')
    set(gca,'TickLabelInterpreter','latex')
    set(0,'DefaultAxesFontSize',18)
    grid on
    if i==1
        pause
    else
        pause(0.1)
    end
end
