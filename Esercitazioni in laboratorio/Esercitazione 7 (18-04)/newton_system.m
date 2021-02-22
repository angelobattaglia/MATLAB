% FORMULA DI NEWTON ITERATIVA PER SISTEMI LINEARI
%{
x = soluzione
ier = numero interazioni effettuate

F = sistema funzioni
J = matrice jacobiana associata al sistema
x0 = punto di partenza
tol = tolleranza
nmax = massimo numero di iterazioni
%}

function [ x,ier ] = newton_system(F,J,x0,tol,nmax)
    
    x = x0;
    ier = 0;
    for i = 1:nmax
        e_i = feval(J,x)\(-feval(F,x));    %e_i = errore relativo del sistema ; feval è il comando che ti valuta la funzione nell'incognita definita 
        x = x + e_i;
        if norm(e_i) <= tol*norm(x)
            ier = 1;
            break
        end
    end
            
end

