%Generare un vettore di 1000 elementi equispaziati compresi tra
%28 e 52. Moltiplicare le componenti di indice pari per 2 e quelle di
%indice dispari per 5. Quanto vale la componente di indice 456?
x=linspace(28,52,1000);
for i=1:2:1000
    x(i)=x(i)*5;
end
for i=2:2:1000
    x(i)=x(i)*2;
end
x(456)
  