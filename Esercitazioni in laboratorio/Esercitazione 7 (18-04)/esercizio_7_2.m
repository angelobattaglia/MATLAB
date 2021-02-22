%esercizio_7_2

clear
close all
clc

d1 = 4.5;
d2 = 6;
r1 = 5;
r2 = 9;

syms a b    %dichiarazione degli angoli in maniera simbolica

f1 = d1*cos(b)+d2*cos(a+b)-r1;
f2 = d1*sin(b)+d2*sin(a+b)-r2;

%{
 'fimplicit' comando esisatente nella versione dal 2016 in poi
fimplicit(f1,'b','linewidth',2)   % 'fimplicit' function per rappresentare le funzione implicite
hold on     %comando per rappresentare nella stessa finestra più funzionio
fimplicit(f2,'R','linewidth',2)
grid on     %comando per rappresentare la gliglia con gli assi nella finestra delle funzioni
%}
%{
comando presente nelle versioni precedenti al 2016 che è poi stato sostituito da 'fimplicit'
ezplot(f1);
hold on
ezplot(f2);
grid on
%}

F = @(x) [ d1*cos(x(2))+d2*cos(x(1)+x(2))-r1 ; d1*sin(x(2))+d2*sin(x(1)+x(2))-r2 ]; %sitema in forma implicita
J = @(x) [ -d2*sin(x(1)+x(2)) -d1*sin(x(2))-d2*sin(x(1)+x(2)) ; 
            d2*cos(x(1)+x(2)) d1*cos(x(2))+d2*cos(x(1)+x(2)) ];  %matrice jacobiana del sistema
nmax = 100;
tol = 1.0e-10;
x0 = [ -0.4 ; 1.3 ];
[ x,ier ] = newton_system(F,J,x0,tol,nmax)

plot([0 d1*cos(x(2)) d1*cos(x(2))+d2*cos(x(1)+x(2))],[0 d1*sin(x(2)) d1*sin(x(2))+d2*sin(x(1)+x(2))],'r','linewidth',2)      %disegno il braccio

