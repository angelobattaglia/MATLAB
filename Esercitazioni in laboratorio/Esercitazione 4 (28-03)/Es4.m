%Somme esponenziali ordine 3
%passante per 0,1), (1,4), (2,8), (3,16)
clc
clear all
x = 0:3;
y= [1 4 8 16];
c = polyfit(exp(x),y,3);
z = linspace(0,3);
p = polyval(c,exp(z));
plot(x,y,'g*',z,p,'b','linewidth',2)