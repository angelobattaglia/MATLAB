%esercitazione 4: autovalori e valori singolari

clear all
close all
clc
format long e

disp('***********************************************')
disp('*****************esercizio_4_1*****************')
disp('***********************************************')

n = 100;
p = n:-1:1;

%con il comando p( ones(n,1), :) ripeto n volte il vettore p
%e genero una matrice le cui n righe sono tutte uguali al 
%vettore p; il comando diag( ones(n-1,1), -1) genera una
%matrice i cui elementi sono tutti uguali a zero tranne
%quelli della codiagonale inferiore che sono uguali a 1;
%infine, triu(A,-1) estrae gli elementi di A a partire 
%dalla codiagonale inferiore e pone uguali a 0 quelli 
%sotto la codiagonale inferiore

A1 = triu( p( ones(n,1), :) - diag( ones(n-1,1), -1), -1 );
[S1,lambda1] = eig(A1);
A1p = A1;
A1p(n,:) = A1p(n,:)+1.0e-10;
lambda1p = eig(A1p);
err1 = abs(sort(diag(lambda1))-sort(lambda1p));
K1 = cond(S1)
M1 = K1*norm(A1-A1p)
plot(real(diag(lambda1)),imag(diag(lambda1)),'r*',real(lambda1p),imag(lambda1p),'ko','linewidth',2)
%poiché il problema è mal condizionato, a una piccola perturbazione
%negli elementi della matrice corrisponde una grande perturbazione 
%negli autovalori
pause
A2 = triu(A1)+triu(A1,1)';
[S2,lambda2] = eig(A2);
A2p = A2;
A2p(n,:) = A2p(n,:)+1.0e-10;
lambda2p = eig(A2p);
err2 = abs(sort(diag(lambda2))-sort(lambda2p));
K2 = cond(S2)
M2 = K2*norm(A2-A2p)
plot(real(diag(lambda2)),imag(diag(lambda2)),'r*',real(lambda2p),imag(lambda2p),'ko','linewidth',2)
%in questo caso il problema è ben condizionato e gli autovalori 
%sono affetti da un errore che è dello stesso ordine di grandezza
%dell'errore associato alla matrice perturbata
disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

disp('***********************************************')
disp('*****************esercizio_4_2*****************')
disp('***********************************************')

m_max = 100;
toll = 1.0e-10;
z = [1;2;3];
A_1 = [1 2 0; 1 0 0; 0 1 0];
[lambda_1,w1,m1] = potenze(A_1,z,toll,m_max)
plot(1:m1+1,lambda_1,'b+-','linewidth',2)
lambda_max_1=lambda_1(end)
autovalori_A_1_eig = eig(A_1)
%il metodo converge abbastanza velocemente perché la rapidità 
%dipende dal rapporto |lambda_2|/|lambda_1|=1/2 e, pertanto,
%raggiunge la toll in 35 iterazioni
pause
%%%%%
A_2 = [0.1 3.8 0; 1 0 0; 0 1 0];
[lambda_2,w2,m2] = potenze(A_2,z,toll,m_max)
plot(1:m2+1,lambda_2,'b+-','linewidth',2)
lambda_max_2=lambda_2(end)
autovalori_A_2_eig = eig(A_2)
%il metodo converge lentamente perché la rapidità 
%dipende dal rapporto |lambda_2|/|lambda_1|=1.9/2=0.95
%e, pertanto, non sono sufficienti 100 iterazioni per 
%raggiungere la tolleranza prefissata 
pause
%%%%%
A_3 = [0 -1 0; 1 0 0; 0 1 0];
[lambda_3,w3,m3] = potenze(A_3,z,toll,m_max)
plot(1:m3+1,lambda_3,'b+-','linewidth',2)
lambda_max_3=lambda_3(end)
autovalori_A_3_eig = eig(A_3)
%non converge perché ci sono due autovalori 
%distinti e di modulo massimo
disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

disp('***********************************************')
disp('*****************esercizio_4_3*****************')
disp('***********************************************')

z = ones(3,1);
A = [0.1 3.8 0; 1 0 0; 0 1 0];
for m_max = 500:300:1100
    [lambda,w,m] = potenze_no_norma(A,z,m_max);
    w
    pause
end
disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

disp('***********************************************')
disp('*****************esercizio_4_4*****************')
disp('***********************************************')

m_max = 100;
toll = 1.0e-10;
z = ones(3,1);
p = 0.5;
A_1 = [1 -2 0; 0 2 0; 1 1 3];
[lambda_1,w1,m1] = potenze_inverse(A_1,p,z,toll,m_max)
plot(1:m1+1,lambda_1,'b+-','linewidth',2)
autovalore_p = lambda_1(end)
autovalori_A_1_eigs_tutti = eigs(A_1,3)
autovalori_A_1_eigs_p = eigs(A_1,1,p)
%il metodo delle potenze inverse converge
%all'autovalore 1, che è il più vicino a p
pause

A_2 = [0.5 -2 0; 0 2 0; 1 1 3];
[lambda_2,w2,m2] = potenze_inverse(A_2,p,z,toll,m_max)
plot(1:m2+1,lambda_2,'b+-','linewidth',2)
autovalore_p = lambda_2(end)
autovalori_A_2_eigs_tutti = eigs(A_2,3)
autovalori_A_2_eigs_p = eigs(A_2,1,0.49)
%il metodo non converge perché p=0.5 è
%autovalore!!! Occorrerebbe prevedere un controllo
%sull'eventualità che p possa essere autovalore
pause

A_3 = [0 -2 0; 0 1 0; 1 1 3];
[lambda_3,w3,m3] = potenze_inverse(A_3,p,z,toll,m_max)
plot(1:m2+1,lambda_3,'b+-','linewidth',2)
autovalore_p = lambda_3(end)
autovalori_A_3_eigS_tutti = eigs(A_3,3)
autovalori_A_3_eigs_p = eigs(A_3,2,p)
%il metodo non converge perché p=0.5 è
%equidistante dagli autovalori 0 e 1
%della matrice A_3
disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

disp('***********************************************')
disp('*****************esercizio_4_5*****************')
disp('***********************************************')

m_max = 1000;
toll = 1.0e-14;
A = [5 0 1 -1; 0 2 0 -.5; 0 1 -1 1; -1 -1 0 0];
n = size(A,1);
z = ones(n,1);
gershgorin(A)
%dall'analisi dei cerchi riga e dei cerchi colonna
%vediamo che c'è un solo autovalore di modulo 
%massimo che appartiene al cerchio di centro 5
%e raggio 1
p = input('fornire p=')
tic
[lambda,w,m] = potenze(A,z,toll,m_max)
tempo_potenze = toc
tic
[lambda_p,w,m] = potenze_inverse(A,p,z,toll,m_max)
tempo_potenze_inverse = toc
%nonostante il metodo delle potenze inverse impieghi 
%meno iterazioni, è più costoso perché ad ogni passo 
%richiede la risoluzione di due sistemi triangolari
disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clear all
close all
clc

disp('***********************************************')
disp('*****************esercizio_4_6*****************')
disp('***********************************************')

n = 10;
A = hilb(n);
m_max = 100;
toll = 1.0e-14;
[d,m] = qr_base(A,toll,m_max)
err = abs(sort(eig(A))-sort(d))

A = [0 0 2; 1 0 1;  0 1 1];
for  m = 1:m_max
    [Q,R] = qr(A);
    A = R*Q;
end
A
disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

disp('***********************************************')
disp('*****************esercizio_4_7*****************')
disp('***********************************************')

format long e
for n = 5:5:100
    A = -ones(n);
    A = triu(A,1)+diag(ones(n,1));
    [U,S,V] = svd(A);
    det(A)
    rank(A)
    valori_singolari = diag(S)
    %la matrice si avvicina a una matrice singolare al crescere di n,
    %tale comportamento non si deduce dal valore del determinante,
    %ma dall'ultimo valore singolare
    pause
end
disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

disp('************************************************')
disp('*****************esercizio_4_8******************')
disp('************************************************')

n = 15;
A = hilb(n);
b = sum(A,2);
x_gauss = A\b;
u = ones(n,1);
err_gauss = norm(u-x_gauss)/norm(u)
toll = 1.0e-12;
[U,S,V] = svd(A);
valori_singolari = diag(S);
condizionamento = valori_singolari(1)/valori_singolari(n)
c = find(diag(S)<=toll);
r = c(1)-1;
y = zeros(n,1);
y(1:r) = (U(:,1:r)'*b)./valori_singolari(1:r);
x_svd = V*y
err_svd = norm(u-x_svd)/norm(u)
disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

disp('***********************************************')
disp('*****************esercizio_4_9*****************')
disp('***********************************************')

clear all
format short e
A = [3 -2 1 2; -1 0 2 1; 0 5 -6 -1; 1 1 -1 1; 1 -1 -1 -1; 8 -1 -5 2];
b = [1; -3; 7; 0; -6; 2];
r = rank(A);
[U,S,V] = svd(A);
vs = diag(S);
ystar = zeros(4,1);
ystar(1:r) = (U(:,1:r)'*b)./vs(1:r);
xstar = V*ystar
x = pinv(A)*b
%Tutte le soluzioni del sistema nel senso dei minimi quadrati 
%sono date da xstar+z con z appartenente al Ker(A). Il 
%ker(A) è generato dal quarto vettore colonna di V e, pertanto,
%le soluzioni sono del tipo xstar+c*V(:,4)

disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

disp('***********************************************')
disp('*****************esercizio_4_10*****************')
disp('***********************************************')

A = imread('cucciolo.jpg'); 
%legge l'immagine salvata nel file cucciolo.jpg e restituisce
%la matrice A, il cui generico elemento A(i,j) contiene il codice 
%di colore del pixel (i,j) (pixel deriva dalla contrazione della 
%locuzione picture element e rappresenta l'elemento più piccolo 
%che costituisce un'immagine). 
%A è una matrice M per N, se la immagine è in bianco e nero; 
%A è una matrice M per N ''a tre piani'' se l'immagine è a colori 
%(il primo piano è per il rosso, il secondo per il verde e il terzo per il blu)
%
B = rgb2gray(A);
%trasforma l'immagine a colori in una in bianco e nero.
%RGB è un modello di colori "additivo" e cioè è un sistema 
%che si basa su tre colori fondamentali 
%(che non devono essere confusi con i colori primari) 
%che sono il rosso, il verde ed il blu e da tre colori di 
%tipo sottrattivo, il giallo, il magenta e il ciano. 
%RGB è l'acronimo di Red, Green e Blue, i nomi dei colori 
%additivi in lingua inglese.
%
size(B)
figure
imshow(B) %per visualizzare l'immagine
pause
B = double(B);   %double(z) converte z in doppia precisione
[U,S,V] = svd(B);
for n = 10:20:70
    An=U(:,1:n)*S(1:n,1:n)*V(:,1:n)';%approssimazione di rango n della matrice B
    figure
    Bn = uint8(An); %uint8(z) converte z in intero
    imshow(Bn)
    title(['n=',int2str(n)])
end
disp('**********************************************FINE ESERCIZIO**********************************************')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
