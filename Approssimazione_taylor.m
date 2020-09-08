%Approssimazione, uso taylor
x=10^-11;
f=@(x) sqrt((exp(x)-1)./x);
y_vera=f(x);
y_approx=1+x/4;
err_rel=abs(y_vera-y_approx)/abs(y_approx)

















