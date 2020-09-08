%Prodotto scalare tra due vettori
x=zeros(100,1);
y=zeros(100,1);
for i=1:100
x(i)=log(i)+sqrt(i);
y(i)=i/(6*pi);
end
h=x.*y;
sum(h)


