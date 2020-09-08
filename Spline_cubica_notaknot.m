%Utilizzare la spline cubica not-a-knot
n=14;
f=@(x) sin(x);
x_nodi=linspace(-6,1,14);
y_nodi=f(x_nodi);
y=f(z);
z=linspace(-6,1,150);
s=spline(x_nodi,y_nodi,z);
err_abs=abs(s-y);
max_err=norm(err_abs,inf)




















