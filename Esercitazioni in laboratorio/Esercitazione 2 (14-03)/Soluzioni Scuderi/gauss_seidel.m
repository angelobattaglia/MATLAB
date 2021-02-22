function [x,k,ier] = gauss_seidel(A,b,x,tol,kmax)
%
% [x,k,ier] = gauss_seidel(A,b,x,tol,kmax)
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

% algoritmo di Gauss-Seidel
for k = 1:kmax
    y = x(1);
    x(1) = (b(1)-A(1,2:end)*x(2:end))/A(1,1);
    xmax = abs(x(1));
    emax = abs(y-x(1));
    for i = 2:n
        y = x(i);
        x(i) = (b(i)-A(i,1:i-1)*x(1:i-1)-A(i,i+1:end)*x(i+1:end))/A(i,i);
        e = abs(y-x(i));
        if abs(x(i)) > xmax
            xmax = abs(x(i));
        end
        if e > emax
            emax = e;
        end
    end
    if emax <= tol*xmax
        ier = 0;
        return
    end
end
ier = 1;