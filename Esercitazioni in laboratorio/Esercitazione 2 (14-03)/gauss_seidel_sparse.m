function [ x,k,ier ] = gauss_seidel_sparse( A,b,x,tol,kmax )
n=length(b);
d=diag(A);
[c,r,a]=find(A'-diag(diag(A)));
for k = 1:kmax
    xmax=0;
    emax=0;
    count=0;
        for i=1:n
        y = x(i);
        count0=count;
            while count+1 <= length(r) && r(count+1) ==i
                count= count+1;
            end
            s = sum(a(count0+1:count).*x(c(count0+1:count))); %sommatoria del prodotto elemento per elemento
            x(i)= (b(i)- s)/d(i); 
                if abs(x(i))>xmax
                    xmax = abs(x(i));
                end
                if abs(x(i)-y)>= emax
                    emax = abs(x(i)-y);
                end
         end
    if emax <= tol*xmax
        ier =0;
        return
    end
end
    ier = 1;
end