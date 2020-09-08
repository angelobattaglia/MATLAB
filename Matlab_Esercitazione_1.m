%ESERCITAZIONE 1 ESERCIZIO SUL LIMITE NOTEVOLE
format short e;
x=[0:15];
x = 10.^(-n); 
f2=(exp(x)-1)./x; 
f2_ex = 0; 
for i = 1:16
    f2_ex = f2_ex+x.^(i-1)/factorial(i);
end
er2= abs(f2-f2_ex)./abs(f2_ex);
%stampa la seguente matrice, con l'apice vengono trasformati in vettori
%colonna
[x' f2' er2']
figure
%per valor di x è molto vicino a l si ha un errore relativo piccolo
loglog(x,er2,'linewidth',2)
