%esercizio_8_2
clear all
close all
clc

format long e;
 
%non serve scrivere gli estremi di integrazione perchè non va fatto cambio
%di variabile

f = @(x) x.*sin(x); 
I = 2^(1/4)*sqrt(pi*(sqrt(2)+2))/8;

tol = 1.0e-10;
nmax = 128;

k = 1;
for n = 2:2:nmax; %nodi
    [z,w] = gaussq(4,n,0,0,0,[0 0]'); %imposto 1 perchè uso Gauss-Hermitte;
    app = f(z.^2)*w'; %la funzione è pari e l'intervallo richiesto è fra 0 e Inf, non fra -Inf e Inf, quindi davanti a tutto ci andrebbe 1/2, ma ha sbagliato qualcosa la Scuderi
    err(k) = abs(I-app)/abs(I); %salvo gli errori in un vettore
    if err(k) <= tol     %criterio d'arresto con la tol
        break
    end
    k = k+1;
end

[(2:2:n)' err']
