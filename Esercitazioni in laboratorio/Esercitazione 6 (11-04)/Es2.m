clc
clear all
f = @(x) x.^3-x-1;
fd = @(x) 3*x.^2-1;

%Per trovare x0:metodo uno --> utilizzo della funzione roots a mo' di
%metodo di bisezione
%roots([1 0 -1 -1]);
%metodo due--> utilizzo del plot e poi a naso vedo dove cade la radice ed
%inserisco manualmente
% z = linspace(-4,4);
% plot(z,f(z),'b',z,0*z,'r','linewidt',2)     si noti che 0*z rappresenta
% l'asse x

%Altri parametri x la funzione
nmax=100;
tol=1.0e-10;

[ x,ier ] = newton( f,fd,1,nmax,tol);
%Ordine teorico di convergenza
e=abs(x(2:end)-x(1:end-1));

%Ordine sperimentale di convergenza
eoc= log(e(2:end))./log(e(1:end-1));
%osservo che è circa due--> festaaaaa