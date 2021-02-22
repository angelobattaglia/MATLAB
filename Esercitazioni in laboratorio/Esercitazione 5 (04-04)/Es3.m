a = -5;
b = 5;
z = linspace(a,b);
f = @(x) 1./(1+x.^2);
n = 5;
for n=5:5:60
x = (b-a)/2*(-cos((2*[1:n+1]-1)/(2*(n+1))*pi))+(b+a)/2;
y = f(x);
s = spline(x,y,z);
plot(x,y,'r*',z,s,'b',z,f(z),'r','linewidth',2)
errore=max(abs(f(z)-s))
pause
end
%Le funzioni polinomiale a tratti garantiscono SEMPRE la convergenza, ma
%ovviamente pago con il fenomeno della saturazione (all'aumentare della 
%regolarità non aumenta la velocità di convergenza). 