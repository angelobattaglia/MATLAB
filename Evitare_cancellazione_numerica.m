%Evitare la cancellazione numerica
x=10^-4;
y=7-sqrt(49+x.^2);
yerr=-1.*(x.^2)./(7+sqrt(49+x.^2));
err_rel=abs(y-yerr)/abs(yerr)