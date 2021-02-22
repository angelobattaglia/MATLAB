%Algoritmo di Thomas
function [x] = GaussTridiagNoPiv(d,c,b)
n=length(d);
x=zeros(n,1); %alloco la memoria per velocizzare
m=zeros(n,1);

    for k=1:n-1
        m(k)=c(k)/d(k);        %moltiplicatore 
        d(k+1)= d(k+1)-m(k)*c(k);
        b(k+1)=b(k+1)-m(k)*b(k);
    end

x(n)= b(n)/d(n);

    for i=n-1:-1:1
        x(i)=(b(i)-c(i)*x(i+1))/d(i);
    end
end