clc;
clear all;
format long e
%roots calcola le radici di un polinomio algebrico e gli si passa i
%coefficienti di un'eq : roots([1 1])
%Ho un polinomio di grado 20, enunciato anche mediante la sommatoria in
%forma monomiale, di cui conosco le radici
%Necessitiamo del pacchetto Toolbox (funz syms)

syms x
e = prod(x-[1:20]); %realizza la produttoria (x-1)(x-2)...(x-20)
e = expand(e); %rappresentazione monomiale
c = coeffs(e); %ne estrae i coeffcienti, sono memorizzati dal più grande a più piccolo
c = flip(c); %li riordina dall'ultima al primo e lo faccio perchè lo devo passare così a roots
x_exact = roots(c);
c = double(c); % lavoro in doppia precisione
x = roots(c)
%Confronta quello che ottieni con una doppia precisione rispetto alla
%singola; abbiamo comunque dei problemi, lavorassimo anche con precisione
%infinita, perchè il pbm è mal condizionato

%Proviamo a perturbare ed osservo quanto cazzo amplifica sto pbm mal
%condizionato
c(2)= c(2)+2^(-23);
x_exact= roots(c)
pause %Sto lavorando con precisione infinita ma ottengo addirittura delle radici immaginarie!!!