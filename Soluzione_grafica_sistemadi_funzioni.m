%CERCARE SOLUZIONE GRAFICA DI DUE FUNZIONI!
clear all
clc
x=[-1:0.1:3];
y1=sqrt(x+1);
y2=(x.^2)-1.*x+1;
plot(x,y1,'b',x,y2,'r','linewidth',2);