%Approssimare
clear all
clc

x=10^-5;
y_real=3-sqrt(9+x.^2);
y_approx=(-1.*(x.^2))/(3+sqrt(9+x.^2));
err_rel=abs(y_real-y_approx)/abs(y_approx)