%Utilizzo spline cubica:
f= @(x) cos(x);
x_nodi=linspace(-1,1,12);
z=linspace(-1,1,120);
y_vera=f(z);
y_nodi=f(x_nodi);
s=spline(x_nodi,y_nodi,z);
err_ass=abs(s-y_vera);
max_err=norm(err_abs,inf)





