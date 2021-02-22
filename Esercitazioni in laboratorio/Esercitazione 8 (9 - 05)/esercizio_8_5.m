% Riguardo al test di Matlab: il test avverrà l'ultima settimana del corso nell'orario
% dell'ultima esercitazione. Verrà caricata la simulazione dell'esame
% dell'anno scorso, incentrata su Spline e quadratura. Durante il test si
% potranno consultare gli appunti cartacei di qualsiasi tipo, nulla di
% digitale


%esercizio_8_5
format short e
clear all
close all
clc


%parte_1 (trapezi, gaussiana e gaussiana composta con intervallo periodico)

a = 0;
b = 2*pi;
I = 3.9774632605064206;
f = @(x) cos(x).^2.*exp(sin(2*x));
%prima determino i nodi, poi valuto la funzione nei nodi e poi scrivo la
%somma di quadratura

for r = 1:14
    %trapezi
    m = 2^r-1;
    x = linspace(a,b,m+1);
    y = f(x);
    int_T = (b-a)/(2*m)*(y(1)+2*(sum(y(2:m)))+y(end));
    err_T(r) = abs(I-int_T)/abs(I);
    p(r) = m;
  
    %gaussiana
    [z,w] = gaussq(1,m+1,0,0,0,[0 0]'); %imposto 1 perchè uso Gauss-Legendre
    x = (b-a)/2*z + (b+a)/2; %cambiamento di variabile
    app = (b-a)/2*f(x)*w'; %prodotto righe per colonne
    err_G(r) = abs(I-app); %salvo gli errori in un vettore
    
    %gaussiana composta
    x = linspace(a,b,m+1); %da riscrivere perchè l'algoritmo precedente l'ha modificato
    app_GC = 0;
    for i = 1:m
    y1 = f((x(i+1)-x(i))/2*(-1/sqrt(3))+(x(i+1)+x(i))/2);
    y2 = f((x(i+1)-x(i))/2*(1/sqrt(3))+(x(i+1)+x(i))/2);
    app_GC = app_GC + (y1+y2);
    end
    
    app_GC = (b-a)/(2*m)*app_GC; 
    err_GC(r) = abs(I-app_GC)/abs(I);
end

[p' err_T' err_G' err_GC']

%da sistemare

%parte_2 (trapezi con intervallo non periodico)

% a = 0;
% b = 1;
% I = 1.429777221309004;
% f = @(x) cos(x).^2.*exp(sin(2*x));
% %prima determino i nodi, poi valuto la funzione nei nodi e poi scrivo la
% %somma di quadratura
% for r = 1:19
%     m = 2^r-1;
%     x = linspace(a,b,m+1);
%     y = f(x);
%     int_T = (b-a)/(2*m)*(y(1)+2*(sum(y(2:m)))+y(end));
%     err(r) = abs(I-int_T)/abs(I);
%     i(r) = m;
% end
% 
% [i' err']