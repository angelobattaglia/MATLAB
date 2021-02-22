%esercizio_8_1
clear all
close all
clc

format long e;
%es 1_1
% a = 0; %estremo 1 di integrazione
% b = 1; %estremo 2 di integrazione
% f = @(x) exp(x); %funzione da integrare
% I = exp(x) -1;

%es 1_2
% a = 0.01; 
% b = 1.1; 
% f = @(x) 1./x.^4; 
% I = 1/3*(10^6-1.1^-3);

%es 1_3
a = 0; 
b = 1; 
f = @(x) sqrt(x); 
I = 2/3;

%es 1_4
a = 0; 
b = 1; 
f = @(x) sin(99*pi*x); 
I = 2/(99*pi);

%es 1_5
a = 0; 
b = 1; 
f = @(x) sin(100*pi*x); 
I = 0;

tol = 1.0e-10;
nmax = 128;
k = 1;
for n = 2:2:nmax; %nodi
    [z,w] = gaussq(1,n,0,0,0,[0 0]'); %imposto 1 perchè uso Gauss-Legendre
    x = (b-a)/2*z + (b+a)/2; %cambiamento di variabile
    app = (b-a)/2*f(x)*w'; %prodotto righe per colonne
    err(k) = abs(I-app); %salvo gli errori in un vettore
    if err(k) <= tol     %criterio d'arresto con la tol
        break
    end
    k = k+1;
end

[(2:2:n)' err'] %stampo a video la tabella con numero di nodi usati e tabella