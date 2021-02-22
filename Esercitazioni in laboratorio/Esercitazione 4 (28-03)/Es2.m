%polifit e polyval vanno a calcolare la matrice di vandermonde
clear all;
clc;
n=2:60;
z=linspace(0,1);
for i=1:length(n)
    x=linspace(0,1,n(i)); %n(i) mi dice il num di elementi che via via io voglio
    y=sin(pi*x); %abbiamo fissato i dati d'interpolazione
    c=polyfit(x,y,length(x)-1); %length(x)=n(i)
    p=polyval(c,z);
    plot(x,y,'g*',z,p,'b',z,sin(pi*z),'r','linewidth',2);
    pause
end