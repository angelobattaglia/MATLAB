%DATA UNA FUNZIONE QUANTI VALORI=X ASSUME IN UN CERTO INTERVALLO

x=linspace(-1,1,1000);
y=(3*x).*exp(4*x.^2).*cos(((2/3)*pi)*x)+50*(1+sin(7*x));
k=0;           %contatore
%Che mi cicla il vettore dei valori della funzione:
for  i=1:1000          
    if y(i)>40.0000 && y(i)<40.9999
        k=k+1;
    end
end
k