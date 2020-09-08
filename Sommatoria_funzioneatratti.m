%FUNZIONE DEFINITA A TRATTI, con sommatoria!!
clear all
clc
%Prima esplico i domini con l'intervallo vettore equisp.
x1=linspace(-3,1,100);
x2=linspace(-3,1,200);
%come scrivere una funzione a tratti
y1=(((x1+5).^2)-5).*(x1<2)+(((x1+2).^2)+4).*(x1>=-2 & x1<=0)+(8-x1).*(x1>0);
%NOTARE IL FATTO CHE MOLTIPLICO IL TRATTO DI FUNZIONE PER GLI ELEMENTI DEL
%VETTORE IL CUI DOMINIO è FISSATO NELLA FUNZIONE A TRATTI.
y2=(((x2+5).^2)-5).*(x2<2)+(((x2+2).^2)+4).*(x2>=-2 & x2<=0)+(8-x2).*(x2>0);
for i=1:100
    z=abs(sum(y1(i).^2))
end
for j=1:200
    k=abs(sum(y2(j).^2))
end
q=z-k