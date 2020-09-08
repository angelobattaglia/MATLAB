%Polinomio di grado 4 nel senso dei minimi quadrati
f=@(x) (x.^2).*log(1+x);
nodi_x=linspace(0,5,22);
nodi_y=f(nodi_x);

c_4=polyfit(nodi_x,nodi_y,4);
p_4=polyval(c_4,2)