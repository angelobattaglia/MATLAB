%Il comando che genera il raggio spettrale della matrice A:
%eig: calcola gli autovalori di una matrice (eig(A)); restituisce in uscita un vettore contenente gli autovalori;
%max: passandogli in ingresso un vettore, calcola il valore della componente massima del vettore;
%abs: passando in ingresso un array, calcola il modulo di ogni elemento; restituisce in uscita i valori calcolati in un array con le stesse dimensioni di quello passato in ingresso.
x = eig(A);
y = abs(x);
rho = max(y);
%OPPURE in modo ancora pi`u compatto con l’unica istruzione
rho = max(abs(eig(A)));