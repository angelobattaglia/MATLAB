%Calcolare il polinomio interpolante la funzione 
%f=(x)x=arctan(x(x+1)) in 8 punti equispaziati dell'intervallo
%0 e 1. Quanto vale l'errore di interpolazione nei punti 0.5 e 0.7?
n=8;
%Nodi su cui calcolare la funzione da approssimare con un polinomio
h=linspace(0,1,n);
y=@(x) atan(x.*(x+1));
% è la funzione vera calcolata nei punti
fx=y(h);
fx1=y(0.5);
fx2=y(0.7);
% Sono i coefficienti del polinomio
c=polyfit(h,fx,n-1);      
% Sono i valori che assume il polinomio nel valore posto a destra
p=polyval(c,h);     
p1=polyval(c,0.5);
p2=polyval(c,0.7);
% Errori
%  err1=norm(fz-p,inf);
err1=abs(fx1-p1);
err2=abs(fx2-p2);
