% Esercizio fatto apposta per evienziare il fatto che la convergenza di un
% metodo non implica la convergenza dell'altro.

% Consegna: scriver gli algoritmi dei metodi sia di Jacobi che di
% Gauss-Seidel non componente per componente ma in forma matriciale;
% ovviamente si distinguono per come definisco D.
% Si noti solo che abbiamo scritto gli altri in forma estesa, ovvero 
% componente per componente, perchè ci ha permeso di scrivere l'algoritmo 
% per sparse

%Inizio da Gauss_Seidel
A_1=[1 -2 2; -1 1 -1; -2 -2 1];
A_2=[4 0 2/5; 0 5 2/5; 5/2 2 1];
A_3=[2 -1 1; 2 2 2; -1 -1 2];
A_4=[3 -1 0 0 0 -1; -1 3 -1 0 -1 0; 0 -1 3 -1 0 0; 0 0 -1 3 -1 0; ...
    0 -1 0 -1 3 -1; -1 0 0 0 -1 3];
b=sum(A_1,2); %Si ricordi di provare anche con le altre 3 matrici
kmax=100;
tol=1.0e-07;
x=zeros(length(A_1),1);
[x,k,ier] = gauss_seidel_mat(A_1,b,x,tol,kmax); %VERIFICA CHE BISOGNA PASSARGLI DAVVERO A_1

%Proseguo con Jacobi
clc;
clear all;
A_1=[1 -2 2; -1 1 -1; -2 -2 1];
A_2=[4 0 2/5; 0 5 2/5; 5/2 2 1];
A_3=[2 -1 1; 2 2 2; -1 -1 2];
A_4=[3 -1 0 0 0 -1; -1 3 -1 0 -1 0; 0 -1 3 -1 0 0; 0 0 -1 3 -1 0; ...
    0 -1 0 -1 3 -1; -1 0 0 0 -1 3];
b=sum(A_1,2); %Si ricordi di provare anche con le altre 3 matrici
kmax=100;
tol=1.0e-07;
x=zeros(lengthA_1,1);
[x,k,ier] = jacobi_mat(A_1,b,x,tol,kmax);