%Chebyshev
a=0;
b=1;
f= @(x) x.*exp(x);
z=linspace(0,1,100);
y_100=f(z);

for i=1:4
t_4=-cos(((i)-1)*pi/4);
z_4=(b-a)/2*t_4+(b+a)/2;
end
y_4=f(z_4);
c_4=polyfit(z_4,y_4,4);
P4=polyval(c_4,z);

for j=1:8
t_8=-cos(((j)-1)*pi/8);
z_8=(b-a)/2*t_8+(b+a)/2;
end
y_8=f(z_8);
c_8=polyfit(z_8,y_8,8);
P8=polyval(c_8,z);

err_rel_8=abs(y_100-P8)/abs(P8);
err_rel_4=abs(y_100-P4)/abs(P4);
err_int=norm(err_rel_8,inf)/norm(err_rel_4,inf);