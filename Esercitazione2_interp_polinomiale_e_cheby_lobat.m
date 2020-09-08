%Esercitazione due: esercizio 2
%Approssimare con i polinomi interpolanti di grado n=5,10,15 le funzioni
%f1(x)=sin(x) nell'intervallo [zero pigreco], e f2(x)=1/(1+x^2)
%nell'intervallo [-2pi,2pi].Utilizzare sia i nodi equispaziati che i nodi
%di Chebyshev-Lobatto opportunamente trasformati nell'intervallo di
%interesse.
a=0;
b=pi;
f= @(x) sin(x);
z=linspace(a,b);
fz=f(z);
for n=5:5:15;
x=linspace(a,b,n+1); %NODI EQUISPAZIATI, OVVERO N+1 DATI DOVE N è IL GRADO DEL POLINOMIO!!
 y=f(x);
c1=polyfit(x,y,n);
p1=polyval(c1,z);
err1=norm(p1-fz,inf);
err1_100=abs(p1-fz);
t=-cos(((1:n+1)-1)*pi/n);%PRIMA MI CALCOLO I NODI DI CHEBYSHEV E POI LI TRASLO.
x=(b-a)/2*t+(b+a)/2;     %NODI DI CHEBYSHEV-LOBATTO TRASLATI.(in base all'inizio dell'intervallo considerato "a" e la fine dell'intervallo "b"
y=f(x);
c2=polyfit(x,y,n);
p2=(polyval(c2,z));
err2=norm(p2-fz,inf);
err2_100=abs(p2-fz);
figure(1)
plot(z,p1,'b',z,p2,'r',z,fz,'g',x,y,'ko','linewidth',3)
legend('equispaziati','Chebyshev-Lobatto','sin(x)','dati_interp')
figure(2)
plot(z,err1_100,'b',z,err2_100,'r','linewidth',3)
legend('equispaziati','Chebyshev-Lobatto')
pause
end