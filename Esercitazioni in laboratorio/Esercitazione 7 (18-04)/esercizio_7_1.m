%esercizio_7_1

clear
close all
clc

F = @(x) [ x(1)^2+2*x(1)*x(2)+x(3) ; x(2)^3+x(3)^2 ; x(1)*x(3)-1 ];
J = @(x) [ 2*x(1)+2*x(2) 2*x(1) 1 ; 0 3*x(2)^2 2*x(3) ; x(3) 0 x(1) ];
nmax = 20;
tol = 1.0e-10;
x0 = [ 0.5 ; -0.5 ; 0.1 ];

[ x,ier ] = newton_system(F,J,x0,tol,nmax)

exact = [ 1 ; -1 ; 1 ];
err = norm(exact-x)/norm(exact)
options = optimoptions('fsolve','OptimalityTollerance',1.0e-10);    %chiedo di cambiare il parametro della tolleranza all'interno della funzione fsolve (questo comando ci permette di modificare le tolleranze nelle functione già presenti in matlab)
x_mat = fsolve(F,x0); %risolvo il sistema in x0
err1 = norm(exact-x_mat)/norm(exact)