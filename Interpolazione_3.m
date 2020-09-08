%Interpolare una funzione
f=@(x) cos(1./x);
x_nodi=linspace(0.2,1,3);
y_nodi=f(x_nodi);
z=f(0.8);
c_2=polyfit(x_nodi,y_nodi,2);
p_2=polyval(c_2,0.8);
risultato=abs(z-p_2)

















