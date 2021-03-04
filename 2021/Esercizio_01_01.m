% Esercitazione 1 esercizio 1

% Inizia uno script con questi comandi
clear all
close all
clc

format long;

% Scrivere una matrice tridiagonale
n = 4; % Grandezza della matrice
d = 4*ones(n,1);
% Codiagonale superiore
c = -1*ones(n-1,1);
% Somma di tre matrici
A = diag(d,0) + diag(c,1) + diag(c,-1);

% Somma gli elementi della matrice lungo le righe se scrivo 2, dopo A.
b = sum(A,2);

for k = 1:n-1
    % Moltiplicatore
    m(k) = c(k)/d(k);
    d(k+1) = d(k+1) - m(k)*c(k);
    b(k+1) = b(k+1) - m(k)*b(k);
    
end

x = zeros(n,1);
x(n) = b(n) / d(n);
for i = n-1:-1:1
    x(i) = (b(i)-c(i)*x(i+1))/d(i)
end
    







