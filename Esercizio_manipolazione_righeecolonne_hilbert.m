%Esercizio manipolazione righe e colonne matrice di Hilbert!
%Sia A la matrice di Hilbert (comando hilb) di dimensione 150.
%Sia B la matrice ottenuta estraendo le colonne multiplo di 5 
%(ovvero 5,10,15,...,150) e le righe pari di A.
%La somma di tutti gli elementi di B vale circa: 
A=hilb(150);
C=A([2:2:150],[5:5:150]);
% for i=5:5:150
%     B=B+A(:,i);
% end
k=sum(C); %somma gli elementi delle colonne
p=sum(k); %somma gli elementi del vettore precedente
