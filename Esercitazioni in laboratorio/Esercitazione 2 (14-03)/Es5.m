%Consegna:implementare metodo SOR
%Triu(A) mamorizza solo la parte superiore della matrice A --> creo una
% nuova matrice che ha gli elementi ho ho richiesto ad A e sotto tutti 
% zeri, che sono memorizzati (se non li volessi chiamo sparse);
% se gli passo due argomenti, triu(A,4) memorizzo gli elementi sopra la
% quarta sopradiagonale
clc;
clear all;
%Definisco la matrice A dopo che ho riconosciuto che è partizionata a
%blocchi
B=[4 -1 0;-1 4 -1;0 -1 4];
C=-eye(3);
A=[B C; C B];
b=sum(A,2);
n=length(b);
kmax=100;
tol= 0.0001;
x = zeros(n,1);
D = diag(diag(A));
L=tril(A,-1);
U=triu(A,1);
k=0; %Ho tolto il ciclo su k altrimenti le iterazioni vanno a 
% sovrascrivere ed io perdo le informazioni precedenti
% Se metto k=5 non ho convergenza
% for k=0:5
    omega = 1+0.2*k;
    for i=1:kmax
        xn= (D+omega*L)\(omega*b+((1-omega)*D-omega*U)*x);     %x new
        if norm(ones(n,1)-x)<= tol*norm(ones(n,1),inf) %ones(n,1) è la soluzione esatta
            ier=0;
            return
        end
        x=xn;
    end
    ier=1;
% end
    