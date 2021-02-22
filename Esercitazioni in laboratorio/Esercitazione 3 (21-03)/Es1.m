% Metodo del gradiente
%Provare anche con n=50, 100
%PROVARE A SOSTITUIRE LE MATRICI D'INGRESSO E TERMINE NOTO CON VALORI PER I
%QUALI NON CONOSCI LA SOLUZIONE (esame????)
clc;
clear all;
n=10;
A=gallery('toeppd',n);
%Il comando gallery crea una matrice dall'archivio delle mareici in matlab
% ed il comando toeppd richiede che questa matrice, che è generata random,
% sia una matrice di Toeplitz (valori costanti lungo ciascuna diagonale)
% e simmetrica definita positiva 
b=sum(A,2);
%Per verificre se A è simmetrica chiampo A'-A e dovrebbe uscirmi una
%matrice identicamente nulla.
% Se voglio calcolare gli autovalori chiamo eig(A).
%Se chiamo cond(A) mi restituisce il condizionamento della matrice A
%calcolato in norma 2.
x = zeros(n,1);
kmax=100;
tol =1.0e-5;
r = b-A*x;
for k = 1:kmax
    s= A*r;
    a =r'*r/(r'*s);  %alfa
    x= x+a*r;  %formula iterativa
    r=r-a*s;
    if norm(r)/norm(b)<= tol
        ier=0;    %Se ier=0 la tolleranza è soddisfatta 
        return
    end
end
ier=1;
cond(A)
norm(r)/norm(b)
norm(ones(n,1)-x)/norm(ones(n,1))