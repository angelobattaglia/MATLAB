% Hilber matrix manipulation first part
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
% Print k
k


% Hilbert matrix manipulation second part
clear all
clc
% Hilbert matrix allocation
H=hilb(100);
% counter
k=0; 
for i=1:100
    for j=1:100
        if H(i,j)<0.03 
            k=k+H(i,j);
        end
    end
end
% Print k
k

% Hilbert matrix manipulation third part
A=hilb(80);
c=0;
for i=1:80
for j=1:80
    if A(i,j)<0.05
    c=c+A(i,j);
    end
end
end
c