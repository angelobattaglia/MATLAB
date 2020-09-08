%Determinare il polinomio interpolante la funzione  in  nodi equispaziati
%dell'intervallo .
%Il massimo errore assoluto d'interpolazione in  punti equidistanti 
%dell'intervallo di interpolazione vale all'incirca:

x=linspace(0,1,150);
z=linspace(0,1,7);
f= @(x) exp(x.^2);
y=f(x);
y_punti=f(z);
c_6=polyfit(z,y_punti,6);
p_6=polyval(c_6,linspace(0,1,150));
err=abs(p_6-y);
err_max=norm(err,inf)