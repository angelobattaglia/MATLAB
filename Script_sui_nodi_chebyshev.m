a=-5;
b=5;
f=@(x) 1./(1+x.^2);
z=linspace(a,b);
fz=f(z);
for n=5:4:13
    x=linspace(a,b,n+1); %nodi equisp
    %t =cos((2*(1:n+1)-1)*pi/(2*(n+1))); x=(b-a)/2*t+(b+a)/2; %nodi
    %Chebyshev traslati
    y= f(x);
    c=polyfit(x,y,n); %trova i coefficienti
    p=polyval(c,z); %mi calcola il polinomio con quei coefficienti nei punti scelti ma nel vettore z
    plot(z,p,'b',z,fz,'r',x,y,'ko','linewidth',3)
    pause
end
