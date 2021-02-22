% Consegna: devo dedurre dall'algoritmo dell'es 1 come poterne costruire
% uno nuovo che mi restituisca L_1 mediante la fattorizzazione data dal 
% metodo di Cholesky; si noti che lo devo applicare in questo caso 
% specifico ad una matrice tridiagonale a diagonale dominante.

% Al solito dovremo verificare con il comando implementato in Matlab di
% default R=chol(A); si noti che per avere corrispondenza con la teoria
% spiegata sul Monagato necessitiamo di fare la trasposta di quello che ci
% restituisce poichè Matlab ha come th di decomposizione R'*R = A 
% (al contrario, e noi ben sappiamo che il prodotto matriciale non gode 
% di commutatività).

clc;
clear all;
n=3;
d= 4*ones(n,1);
c= - ones(n-1,1);
A = diag(d)+diag(c,-1)+diag(c,1);

[ d,m ] = chol_tridiag(d,c);
L_1=(diag(ones(n,1))+diag(m,-1))*diag(sqrt(d))

R=chol(A);
R'

%Voglio infine visualizzare quanto discostano i due risultati
err=norm(R'-L_1,inf);
err