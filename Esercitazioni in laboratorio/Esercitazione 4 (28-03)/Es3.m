%Es3
a = -5;
b = 5;
z = linspace(a,b);
f = @(x) 1./(1+x.^2); %Funzione di Runge
n = 5;
% x = linspace(a,b,n+1); %per la funz di runge

for n=5:5:60
% Nodi di Chebichev
x = (b-a)/2*(-cos((2*[1:n+1]-1)/(2*(n+1))*pi))+(b+a)/2; %(b-a) serve per ricentrare l'intervallo
%il meno serve per ordinarli dal più piccolo al più grande

y = f(x);
c = polyfit(x,y,n);
p = polyval(c,z); %Valuto i punti del polinomio
plot(x,y,'r*',z,p,'b',z,f(z),'r','linewidth',2)
errore=max(abs(f(z)-p))
pause
end
% Oss: visto che n è piccolo il tutto gira lo stesso, ma se aumento il suo
% valore la convergenza salta: questo perchè matlab è intelligente e finchè
% può gestisce il malcondizionamento. Infatti quando lo si lancia viene
% stampata la warnoing del malcondizionamento della funzione di Runge