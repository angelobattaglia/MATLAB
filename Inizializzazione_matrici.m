%Come generare matrice
clc
clear all
clc
A=-2*eye(5)+diag(ones(1,4),1)+diag(ones(1,4),-1);
%1)MATRICE eye(n) genera una matrice quadrata di ordine NxN IDENTICA, CON
% TUTTI GLI ELEMENTI ALLOCATI SULLA DIAGONALE PRINCIPALE!! QUINDI
%MOLTIPLICO PER -2 PER AVERE UNA MA
%2)MATRICE diag(m,n); m è un vettore e me lo posiziona su una diagonale di 
%una matrice MxM.
%3)MATRICE ones(m,n) GENERA UNA MATRICE DI M RIGHE E N COLONNE CON TUTTI 
%ELEMENTI UGUALI A UNO 1.