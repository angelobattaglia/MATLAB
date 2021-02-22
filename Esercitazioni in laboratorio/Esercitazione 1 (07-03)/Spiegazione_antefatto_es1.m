% Spiegazione: quello che segue è Gauss in generale: da questo algoritmo
% vogliamo trarne un'ottimizzazione per matrici particolarmente belle: è
% così che arriviamo all'algoritmo di Thomas.

A=ones(n,n);
for k=1:n-1
    for i=k+1:n
        A(i,k)=A(i,k)/A(k,k);
        for j=k+1:n
            A(i,j)=A(i,j)-A(i,k)*A(k,j);
        end
        b(i)=b(i)-A(i,k)*b(k);
    end
    x(n)=b(n)/A(n,n);
    for i=n-1:-1:1
        x(i)=(b(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
    end
end

% L'idea è quella di ottimizzare il costo computazionale per la struttura
% semplificata della matrice in oggetto.
% Possiamo ottimiazzare anche l'occupazione di memoria: 
% a seconda della struttura della matrice, che in questo caso 
% è tridiagonale, memorizziamo solo la diagonale e 
% quella superiore

for k=1:n-1
    A(k+1,k)= A(k+1,k)/A(k,k);
    A(k+1,k+1)=A(k+1,k+1)- A(k+1,k) * A (k,k+1);
    b(k+1)= b(k+1)-A(k+1,k)*b(k);
end

x(n)=b(n)/A(n,n);

for i=n-1:-1:1
    x(i)=(b(i)-A(i,i+1)*x(i+1))/A(i,i);
end