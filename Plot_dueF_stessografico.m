%Plottare due funzioni in un unico grafico con INLINE
f1=inline('x.^2');
f2=inline('(x-1).^2');
x=linspace(0,2);
y1=f1(x);
y2=f2(x);
plot(x,y1,x,y2);
%Questa invece è la parte che li stampa in due grafici diversi!
% f1=inline('x.^2'); 
% f2=inline('(x-1).^2');
% x=linspace(0,2);
% y1=f1(x);
% y2=f2(x);
% figure;
% plot(x,y1);
% figure;
% plot(x,y2);