function [ d,m ] = chol_tridiag(d,c)
n=length(d);
m=zeros(n-1,1);

    for k=1:n-1
        m(k)=c(k)/d(k);        %moltiplicatore 
        d(k+1)= d(k+1)-m(k)*c(k);
    end  
end