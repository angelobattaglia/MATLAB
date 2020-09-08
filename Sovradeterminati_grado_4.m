%Si consideri f(x)=x^2\log(1+x). Si costruisca il polinomio
%p(x) di grado 4 approssimante f nel senso dei minimi quadrati 
%su 22 nodi equispaziati nell'intervallo [0,5], estremi inclusi.
%p(2) vale circa:
f=@(x) (x.^2).*(log(1+x));
z=linspace(0,5,22);
y=f(z);
c_4=polyfit(z,y,4);
val=polyval(c_4,2)
