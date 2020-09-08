%Trovare il polinomio interpolante i dati (x,y). Il coefficiente del
%monomio di secondo grado vale circa?
x=[1,2,3,4];
y=[1,-1,1,-1];
c=polyfit(x,y,3); 
%IL VALORE CERCATO è PROPRIO QUELLO DEL COEFFICIENTE DEL MONOMIO DI SECONDO
%GRADO.