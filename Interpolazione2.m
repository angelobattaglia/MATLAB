%Interpolazione mattutina #2
x=linspace(0,1,8); %creo i nodi equispaziati
f= @(x) atan(x.*(x+1));
y=f(x); %funzione vera e propria
%Proprio qui io calcolo la funzione
%nei punti 0.5 e 0.7
y1=f(0.5);
y2=f(0.7);
%ora calcolo il polinomio interpolante
c=polyfit(x,y,7);
p1=polyval(c,0.5);
p2=polyval(c,0.7);
err1=abs(y1-p1);
err2=abs(y2-p2);