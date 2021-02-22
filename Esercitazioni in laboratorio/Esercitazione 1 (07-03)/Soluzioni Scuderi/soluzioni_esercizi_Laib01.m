%soluzioni esercizi Laib01
clear all
clc
disp('***********************************************')
disp('*****************esercizio_1_1*****************')
disp('***********************************************')
format short e
n = 10;
d = 4*ones(n,1);
c= -ones(n-1,1);
A = diag(d,0)+diag(c,1)+diag(c,-1);
% verifica A definita positiva
autovalori_A = eig(A)
b = sum(A,2);
x = gauss_tridiag_nopiv(d,c,b);
% verifica correttezza risultato
x_m =A\b;
err_sol = norm(x-x_m,inf)
pause
clear all
clc
disp('***********************************************')
disp('*****************esercizio_1_2*****************')
disp('***********************************************')
format short e
n = 10;
d = 4*ones(n,1);
c= -ones(n-1,1);
A = diag(d,0)+diag(c,1)+diag(c,-1);
%verifica A definita positiva
autovalori_A = eig(A)
[d,m] = chol_tridiag(d,c);
L_1 = (diag(ones(n,1))+diag(m,-1))*diag(sqrt(d));
% verifica correttezza risultato
R = chol(A); 
err_chol = norm(L_1-R',inf)
pause
clear all
clc
disp('***********************************************')
disp('*****************esercizio_1_3*****************')
disp('***********************************************')
n = 2500;
d = 4*ones(n,1);
c= -ones(n-1,1);
A = diag(d,0)+diag(c,1)+diag(c,-1);
b = sum(A,2);
tic
[L,U,P] = lu(A);
y = L\(P*b);
x = U\y;
tempo_PALU = toc
pause
tic
R = chol(A);
y = R'\b;
x = R\y;
tempo_Chol = toc
pause
tic 
[Q,R] = qr(A);
x = R\(Q'*b);
tempo_QR = toc
pause
tic
[U,S,V] = svd(A);
y = S\(U'*b);
x = V*y;
tempo_svd = toc
