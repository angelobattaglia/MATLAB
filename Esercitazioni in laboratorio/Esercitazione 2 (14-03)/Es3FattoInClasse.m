clc;
clear all;
A=[1 -2 2; -1 1 -1; -2 -2 1];
b= sum(A,2); %si noti che così facendo io conosco la soluzione esatta 
% e posso testare l'efficienza di quello che ho scritto
kmax=100;
tol=1.0e-07;
n=length(b);
x=zeros(n,1);
D_J=diag(diag(A)); %matrice per metodo jacobi
C_J=A-D_J; 
rho_J = max(abs(eig(eye(n)-inv(D_J)*A)));
D_GS=tril(A);
C_GS= A-D_GS;
ier_J=1;
for k=1:kmax
    x_J=D_J\(b-C_J*x);
    if norm(x_J-x)<= tol*norm(x_J,inf)
        ier_J=0;
        break
    end
    x= x_J;
end


x=zeros(n,1);
ier_GS=1;
rho_GS = max(abs(eig(eye(n)-inv(D_GS)*A)));
for k=1:kmax
    x_GS=D_GS\(b-C_GS*x);
    if norm(x_GS-x)<= tol*norm(x_GS,inf)
        ier_GS=0;
        break
    end
    x=x_GS;
end

%Se lo lancio posso osservare che GS non converge; per vedere se ho fatto
%errori di programmazione controllo se il raggio spettrale è minore di uno;
%da quello che ottengo vedo che il raggio di jacobi è vicino a 10^-5 mentre
%quello di GS è vicino a 5!!!!!!!!!!!