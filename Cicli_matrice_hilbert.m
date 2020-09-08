%Cicli sulla matrice di hilbert
A=hilb(50);
c=0;
for i=1:50
for j=1:50
if cos(A(i,j))>0.999
c=c+1;
end
end
end
c;














