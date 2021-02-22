function [z,w]=gaussq(ic,n,alpha,beta,kpts,endpts) 

%z sono gli zeri
%w sono i pesi
%ic è un indice con cui selezionare il tipo di polinomio
%alpha e beta sono i parametri presenti ad esempio nei polinomi di Jacobi
%

%  calcolo di zeri e pesi di polinomi ortogonali
%   ic = 1, Polinomi di Legendre
%   ic = 2, Polinomi di Chebychev di I tipo
%   ic = 3, Polinomi di Chebychev di II tipo
%   ic = 4, Polinomi di Hermite
%   ic = 5, Polinomi di Jacobi
%   ic = 6, Polinomi di Laguerre
%
%

[a1,b1,mu1]=class1(ic,n,alpha,beta);
if kpts == 1,
   [gam]=solve(endpts(1),n,a1,b1);
   a1(n)=gam*b1(n-1)^2+endpts(1);
elseif kpts==2,
   [gam]=solve(endpts(1),n,a1,b1);
   [gam1]=solve(endpts(2),n,a1,b1);
   t1=((endpts(1)-endpts(2))/(gam1-gam));
   b1(n-1)=sqrt(t1);
   a1(n)=gam*t1+endpts(1);
end


[d,e,z,ier]=gausq2(n,a1,b1);
z=z.^2*mu1;


