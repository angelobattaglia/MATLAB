%Prodotto scalare tra due vettori di cento elementi!
clear all
clc
for i=1:100
    x(i)=log(i)+sqrt(i); %creo due vettori, li riempio con il for
    y(i)=i./(6*pi);
    
   
end

z=x*y' %y trasposto, altrimenti non si pu� effettuare il prodotto scalare. 
        %'*' � prodotto scalare|| '.*' � prodotto elemento per elemento
