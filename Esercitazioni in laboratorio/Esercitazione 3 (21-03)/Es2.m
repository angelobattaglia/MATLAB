% Metodo del gradiente coniiugato
%Chiamo al prompt pcg: il primo parametro di input è la matrice, poi ho il
%termine noto, poi ho la tolleranza che viene utilizzato allo stesso modo
%come noi abbiamo fatto esplicitamente nel metodo del gradiente (norma 2) 
% (di default è 10^-6), maxit è il numero massimo di iterazioni, M è il
% precondizionatore oppure M1 M2 sono i due fattori che moltiplicati tra
% loro danno il num di precondizionamento, x0 è la prima approssimazione.
% In output: revsec restituisce il vettore dei residui per tutte le iterate
% Se la matrice è ben condizionata ad un piccolo residuo corrisponde un
% piccolo errore sulla soluzione, se la matrice è mal condizionata questo
% non è assolutamente garantito.
%L'ordine della matrice è (n-2)^2

clc;
clear all;
N=100;
A = delsq(numgrid('S',N)); %S=square
condizionamento= condest(A); %stima l'ordine condizionamento 
n = (N-2)^2; %sizeA
b = sum(A,2);
kmax=1000;
tol=1.0e-12;
x=zeros(n,1);
[x0, ier0, tel_res0, k0, resvec0]= pcg(A,b,tol,kmax,[],[],x); 
%questo x0 la soluzione data dal metodo senza precondizionamento --> 
% tutti questi zeri indicano che sto operando
% con il metodo senza condizionamento. Gli passo il vettore vuoto per non
% condizionare. La matrice A ha un condizionamento dell'ordine di 10^5
semilogy(0:k0,resvec0,'linewidth',2) %grafico del vettore residuo
L1 = ichol(A); %fattorizzzione cholesky incompleto
[x1, ier1, tel_res1, k1, resvec1]= pcg(A,b,tol,kmax,L1,L1',x); %ho fatto 
% la stessa cosa ma con il precondizionamento
%L'indice 1 mi dice che ho usato i precondizionamenti (m=L1_bar*L1_bar').
semilogy(0:k0,resvec0,'r',0:k1,resvec1,'b', 'linewidth',2); %in un solo 
% output faccio il confronto fra i due grafici