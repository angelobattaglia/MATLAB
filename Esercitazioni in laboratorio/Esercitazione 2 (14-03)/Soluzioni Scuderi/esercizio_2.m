function [x,k,ier] = jacobi_mat(A,b,x,tol,kmax)
%
% [x,k,ier] = jacobi_mat(A,b,x,tol,kmax)
%
%   A   :   matrice dei coefficienti del sistema lineare
%   b   :   vettore dei termini noti del sistema lineare
%   x   :   vettore colonna, in input soluzione iniziale, in output soluzione approssimata
%   tol :   tolleranza relativa
%   kmax:   numero massimo di iterazioni consentite
%   k   :   numero di iterate calcolate
%   ier :   indicatore del criterio d'arresto utilizzato, vale 1 se raggiunte kmax iterazioni, 
%           vale 0 se soddisfatta la tolleranza relativa tol
%

% verifica che A sia quadrata
[n,m] = size(A);
if n ~= m
   error('la matrice A non è quadrata');
end

% verifica che x sia un vettore colonna
if ~iscolumn(x)
   error('x deve essere un vettore colonna');
end

% verifica che b sia un vettore colonna
if ~iscolumn(b)
   error('b deve essere un vettore colonna');
end

% verifica che la dimensione di x sia compatibile con quella di A
if n ~= length(x)
   error('A e x devono avere le dimensioni compatibili');
end

% verifica che la dimensione di b sia compatibile con quella di A
if n ~= length(b)
   error('A e b devono avere le dimensioni compatibili');
end

% algoritmo di Jacobi
D = diag(diag(A));
C = A-D;
for k = 1:kmax
    y = x;
    x = D\(b-C*y);
    if norm(x-y,inf) <= tol*norm(x,inf)
        ier = 0;
        return
    end
end
ier = 1;