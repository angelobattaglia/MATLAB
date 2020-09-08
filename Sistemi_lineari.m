%Sia A una matrice simmetrica tridiagonale di ordine 18 con gli elementi 
%della diagonale principale uguali a 6 e quelli delle codiagonali 
%(inferiore e superiore) uguali a 3. 
%Sia B una matrice di ordine 18\times 3, il cui j-esimo vettore colonna 
%b^{(j)} e' definito da elementi equispaziati in [0,j], j=1,2,3.
%Risolvere i sistemi Ax^{(j)}=b^{(j)}. 
%La norma 2 del vettore \sum_{j=1}^{3}x^{(j)} vale all'incirca:
A=(6.*diag(ones(1,18)))+(3.*diag(ones(1,17),1))+(3.*diag(ones(1,17),-1));
y=linspace(0,1,18);
u=linspace(0,2,18);
o=linspace(0,3,18);
B1=zeros(18,1)+y';
B2=zeros(18,1)+u';
B3=zeros(18,1)+o';
x1=A\B1;
x2=A\B2;
x3=A\B3;
x_tot=x1+x2+x3;
norm(x_tot,2)