function [x,k,ier] = gauss_seidel_sparse(A,b,x,tol,kmax)
%
% utilizza il ciclo while invece di nz_ir =  nnz(ir == i):
% avanza nel vettore ir fintantoché il numero di riga non cambia!!!
% [x,k,ier] = gauss_seidel_sparse(A,b,x,tol,kmax)
%
%   A   :   matrice dei coefficienti del sistema lineare in formato sparso
%   b   :   vettore dei termini noti del sistema lineare
%   x   :   vettore colonna, in input soluzione iniziale, in output soluzione approssimata
%   tol :   tolleranza relativa
%   kmax:   numero massimo di iterazioni consentite
%   k   :   numero di iterate calcolate
%   ier :   indicatore del criterio d'arresto utilizzato, vale 1 se raggiunte kmax iterazioni, 
%           vale 0 se soddisfatta la tolleranza relativa tol
%

% verifica che A sia sparsa
if ~issparse(A)
   warning('la matrice A non è in formato sparso');
   A = sparse(A);
end

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

% algoritmo di Gauss-Seidel per matrici in formato sparso
d = diag(A);
[c,r,a] = find(A'-diag(diag(A)));
for k = 1:kmax
    xmax = 0;
    emax = 0;
    count = 0;
    for i = 1:n
        y = x(i);
        count0 = count;
        while count+1 <= length(r) && r(count+1) == i 
              count = count+1;
        end
        s = sum(a(count0+1:count).*x(c(count0+1:count)));
        x(i) = (b(i)-s)/d(i);
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
