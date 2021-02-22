function x = gauss_tridiag_nopiv(d,c,b)
% Sia Ax=b con A tridiagonale, simmetrica e a diagonale dominante oppure 
% definita positiva:
% INPUT
% d: vettore contenente gli elementi della diagonale principale di A
% c: vettore contenente gli elementi della codiagonale superiore 
%   (e inferiore) di A
% b: vettore contenente gli elementi del termine noto
% OUTPUT
% x: vettore contenente la soluzione del sistema Ax=b 
n = length(d);
x = zeros(n,1);
m = zeros(n-1,1);
for k = 1:n-1
    m(k) = c(k)/d(k);
    d(k+1) = d(k+1)-m(k)*c(k);
    b(k+1) = b(k+1)-m(k)*b(k);
end
x(n) = b(n)/d(n);
for i = n-1:-1:1
    x(i) =(b(i)-c(i)*x(i+1))/d(i);
end