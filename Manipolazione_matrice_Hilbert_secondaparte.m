%Manipolazione matrice di Hilbert numero due!
clear all
clc
H=hilb(100);
k=0; %questo è il contatore!!
for i=1:100
    for j=1:100
        if H(i,j)<0.03 
            k=k+H(i,j);
        end
    end
end
k