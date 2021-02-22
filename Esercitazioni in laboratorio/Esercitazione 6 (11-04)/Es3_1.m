%> <
clc
clear all
nmax = 100;
tol = 1:0e-10;
g = @(x) -sqrt(exp(x)/2);
z= linspace(-4,4);
plot(z,g(z),'b',z,z,'r','linewidth',3)
%Nella soluzione che carica lei ci sarà la possibilità di lanciare lo
%script, ti plotta la radice e da prompt senza rilanciare puoi inserire
%a mano x0
x0=-.5;

[ x,ier,n ] = punto_fisso( g,x0,nmax,tol );
e=abs(x(2:end)-x(1:end-1));
eoc=log(e(2:end))./log(e(1:end-1));