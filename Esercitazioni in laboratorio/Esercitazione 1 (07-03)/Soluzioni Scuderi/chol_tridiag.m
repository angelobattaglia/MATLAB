function [d,m] = chol_tridiag(d,c)
% Sia A tridiagonale, simmetrica e definita positiva:
% INPUT
% d: vettore contenente gli elementi della diagonale principale di A
% c: vettore contenente gli elementi della codiagonale superiore 
%   (e inferiore) di A
% OUTPUT
% d: vettore contenente gli elementi della diagonale principale di L_1 
n = length(d);
m = zeros(n-1,1);
for k = 1:n-1
    m(k) = c(k)/d(k);
    d(k+1) = d(k+1)-m(k)*c(k);
end