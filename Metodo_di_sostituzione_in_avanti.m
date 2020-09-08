%%Metodo di sostituzione in avanti (o forward substitution):
for i=1:n
    y(i)=b(i);
          for j=1:i-1
              y(i)=y(i)-L(i,j)*y(j);
           end
     y(i)=y(i)/L(i,i);
end