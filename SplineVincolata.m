%Spline cubica vincolata
n=25;
x=linspace(0,1,n);    %nodi equispaziati che deve interpolare, e non il dominio
z=linspace(0,1,1000); %Intervallo-dominio della spline
%DICHIARO LA FUNZIONE E LA SUA DERIVATA
f= @(x) (x.^3).*(cos(x));
fd= @(x) 3.*(x.^2).*cos(x)-(x.^3).*sin(x);
%funzioni vere calcolate nei nodi
f1=f(x);
fd=fd(x);
%funzioni calcolare nel dominio z
f1vera=f(z);
fdvera=fd(z);
%derivate nei punti 0 e 1
yd0=fd(0);
yd1=fd(1);
%Per trovare il massimo errore assoluto di
%interpolazione 

s=spline(x,[yd0 f1 yd1],z);

% s=spline(x,[yd0 f1 yd1],z);
% for i=1:1000
% err=abs(f1vera(i)-s(i));
% end
% m=max(err);
err=norm(f1vera-s,inf)


