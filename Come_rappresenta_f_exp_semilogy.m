%LE FUNZIONI ESPONENZIALI è MEGLIO RAPPRESENTARLE CON LA SCALA
%SEMILOGARITMICA SULL'ASSE Y, IL VETT
x=linspace(0,4,30);
y=exp(x.^2);
figure
%semilogx(x,y); non ho capito se viene meglio
semilogy(x,y);

