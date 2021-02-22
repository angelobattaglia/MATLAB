clc
clear all
nmax = 100;
tol = 1:0e-10;
%Questa g è un Newton sotto le mentite spoglie di un punto fisso
g = @(x) (2*x.^3+4*x.^2+10)./(3*x.^2+8*x);
x0=1.5;
[ x,ier,n ] = punto_fisso( g,x0,nmax,tol );
e=abs(x(2:end)-x(1:end-1));
eoc=log(e(2:end))./log(e(1:end-1));
%g= @(x) (x+exp(-x))/2;
%g= @(x) (x+2*exp(-x))/3;