%Condizionamenti per Matrice Vandermonde, matrice Hilbert, polinomi 
% lagrange. La rappresentazione di lagrange è poco efficente poichè se
% voglio aggiungere un nodo devo distruggere tutto e riniziare da capo, da
% qua entra in gioco la rappresentazione di Newton.
clc;
clear all;
format short e
n=2:20;
for i=1:length(n)
    x=linspace(0,1,n(i)); %n(i) mi dice il num di elementi che via via io voglio
    V=vander(x);
    k1(i)=cond(V,1); %condizionamento in norma 1
    k2(i)=cond(V,2);
    kinf(i)=cond(V,inf); %questo per dimostrare che se una matrice è mal condizionata in una norma è così per tutte
    b=sum(V,2);
    sol=V\b;
    err(i)= norm(ones(n(i),1)-sol)/norm(ones(n(i),1));
end
norme=[k1', k2', kinf']; %li rappresento tutti in una tabellina, messi in colonna