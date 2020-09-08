%Esercizio con cholesky
A=zeros(100);
for i=1:100
for j=1:100
A(i,j)=max(i,j);

end
end
B=A'*A;
R=chol(B);
R(52,64)