clc;
clear all;

a = 0;
b = 1;
n = 20;
f = @(x) sin(x);
x = linspace(a,b,n);
y = f(x);
t = 0.3;
[p,ier] = poligonale(x,y,t)
p_mat = interp1(x,y,t)
%Confronto la mia poligonale artigianale con quella bella di Matlab e vedo
%di quanto si discosta