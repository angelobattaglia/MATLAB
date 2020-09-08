%Matrice hilbert
clc
clear all
H=hilb(30);
%quanti elementi sono maggiori di ecc...
k=0;
for i=1:30
    for j=1:30
        if sin(H(i,j))>0.03 %se metto il : prende tutti gli elementi di quella riga o colonna;
           
            k=k+1;
        end
    end
end
k