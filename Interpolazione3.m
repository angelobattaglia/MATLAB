%Interpolazione mattutina #3
x=[3 6 7 14 21];
y=[8 4 5 5 7];
c=polyfit(x,y,4);
p=polyval(c,exp(0.7))