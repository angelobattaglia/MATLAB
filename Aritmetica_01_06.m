%Quiz su aritmetica di macchina test01 domanda 6
x=10^-12;
f1=((exp(3.*x)-1)./x);
f2=(3+((9/2).*x)+(27/6).*(x.^2)+(81/24).*(x.^3)+(243/120).*(x.^4));
err=abs(f2-f1)/abs(f1)

