% Comandi utilizzati:
% Ones(a,b) restituisce una matrice a*b, per cui visto che noi vogliamo un
% vettore riga che rappresenta la sotto-diagonale sarà di dim (n-1)*1 (la
% sotto(sopra)diagonale primaria ha un elemento in meno rispetto
% alla diagonale, la secondaria due e così via)

% diag(c,1), poichè ha come primo argomento un vettore, crea una matrice
% diagonale che ha come valori della diagonale quelli dentro al vettore c
% ma invece di stare esattamente sulla diagonale sono spostati una
% posizione sopra; quello che in secondo argomento ha -1 invece restituisce
% una matrice con la diagonale spostata di uno sotto. Si noti che se avessi
% dato come primo argomento una matrice ne avrebbe estratto la diagonale
% mettendola in un vettore.

% Consegna: creare matrice tridiagonale a diagonale dominante
clear all
clc
n=10;
c= - ones(n-1,1);
d=4*ones(n,1);
A=diag(d)+diag(c,-1)+diag(c,1);

% Consegna: il termine noto è A*1=b
% Come si fa ad assimilare ad un vettore una matrice? Sommando le sue
% componenti, perchè equivale a moltiplicare la matrice per un vettore di 
% uno (si ricordi infatti la moltiplicazione righe per colonne): 
% avrei potuto utilizzare anche il comando A*ones(n) che fa tutto
% espicitamente, ma ovviamente ci mette più tempo di calcolo;
% utilizziamo invece il comando sum(A,2), dove il due indica che il
% calcolatore sta sommando lungo la seconda dimensione, ovvero le colonne:
% restituirà infatti un vettore colonna

b=sum(A,2);
[x]= GaussTridiagNoPiv(d,c,b)
x_m = A\b