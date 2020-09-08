%Rappresentare la spline cubica che soddisfa la condizione not-a-knot e
%interpolante la funzione f(x)=1/(1+x^2) in I=[-5,5] di grado 6,10,14.
a=-5;
b=5;
f=@(x) 1./(1+x.^2);
z=linspace(a,b);
%z=linspace(-5,5); equivalente
fz=f(z); %fz è la funzione reale non polinomiale calcolata nell'intervallo,
         %poi divido l'intervallo in nodi e confronto le due con la norma infinito

for n=6:4:14
    x=linspace(a,b,n); %Nodi equispaziati che variano a seconda se si vogliono 6 10 14 nodi
    y=f(x);            %creo il vettore y che utilizza la funzione che avevo pre-impostato per calcolare 
    s=spline(x,y,z);   %spline cubica not a knot calcolata nell'intervallo z e interpolante 
                       %i dati contenuti nei vettori x e y;
    plot(x,y,'ko',z,s,'b',z,fz,'r','linewidth',3);
    err=norm(s-fz,inf);
    pause
end
