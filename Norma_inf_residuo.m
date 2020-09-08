%Vettore unitario
%Quiz #1


M=magic(567);
I=10.*eye(567);
A=M+I;
b=sum(A,2);
x=A\b;
nr=b-A*x