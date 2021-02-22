clc;
clear all;

%Consegna: creare una matrice con il comando magic. Magic(n) crea una 
% matrice n*n con dentro dei numeri interi positivi che vanno da 1<x<n^2 ed
% ha la caratteristica di avere somme uguali per riga, colonna e diagonale;
% funziona pe ogni n>=3. Successivamente verificare che A sia non singolare
% e creare B nel modo dato.
% Controlli su B: si ricordi che ogni matrice simmetrica definita positiva
% ha tutti gli autovalori strettamente positivi; il comando eig estrae gli
% autovalori dalla matrice. Per verificare se B è simmetrica fortunatamente
% possediamo il comando issymmetric che restituisce la risposta logica 0
% oppure 1

n=5;
A=magic(n);
if det(A)~=0
    B=A'*A;
    c=eig(B);
     for i=1:n
        if c(i)>0
            d=c;
        end
     end
     if issymmetric(B)==1 && length(d)==n
        b=sum(B,2);
        tol = 1.0e-05;
        kmax=100;
        x=zeros(n,1);
        [ x,k,ier,y ] = gauss_seidel(B,b,x,tol,kmax );
        %Si noti che ho mandato fuori anche y che è l'ultima iterazione
        %prima della soluzione, la x(k) con l'ultima k
        err=norm(x-y,inf)/norm(x,inf);
     end
else
    return
end