A=12.*diag(ones(1,44))+4.*diag(ones(1,43),1)+4.*diag(ones(1,43),-1);
b=linspace(10,12,44);
[L, U, P]=lu(A);
y=L\P*b';
x=U\y;
vect=x+y;
norma=norm(x+y,inf);
