%INTERPOLARE 4 DATI (X,Y);
x=[ 0 1 2 1/2];
y=[ 1 -1 1 2]; 
c=polyfit(x,y,length(x)-1);
z=linspace(min(x),max(x));
p=polyval(c,z);
plot(x,y,'ro',z,p,'b');
