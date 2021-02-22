clc;
clear all;

a = 0;
b = 1;
n = 20;
f = @(x) sin(x);
fd = @(x) cos(x);
x = linspace(a,b,n);
y = f(x);
t = 0.3;
s = spline_vincolata_partizione_uniforme( x,y,fd(x(1)),fd(x(end)),t );
s_mat = spline(x, [fd(x(1)) y fd(x(end))], t); %L'ultima richiesta è stata 
%fatta per chiamare la spline voncolata e non la not a knot