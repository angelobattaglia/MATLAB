clear all;
clc;

% Coefficiente di sparsità: (elementi diversi da zero)/(n^2) ed è il 
% secondo argomento di sprandsym:
% A=sprandsym(7,.01, linspace(1,7,7));
% Metto a confronto i due metodi con tic-toc per verificare 
% l'ottimizzazione del secondo

n=400;
A= sprandsym(n,0.01,rand(n,1)*10);
tol=1.0e-06;
kmax=10000;
x=zeros(n,1);
b=sum(A,2);
tic
[ x,k,ier ] = gauss_seidel_sparse( A,b,x,tol,kmax );
k
t_sparse = toc
tic
[ x,k,ier ] = gauss_seidel( A,b,x,tol,kmax );
k1=k;
k1
t=toc
%per fare bene il confronto dovresti mettereli in due script diversi perchè
%altrimenti quello che viene dopo ha già tutti gli argomenti sistemati e fa
%solo più un'iterazione e non ha senso; inoltre lo stesso nome per la k fa
%andare un po' in tilt le cose