%%
% 
% $$e^{\pi i} + 1 = 0$$
% 
a=-5;
b=5;
f=@(x) 1./(1+x.^2);
z=linspace(a,b);
fz=f(z);
for n= 6:4:14;
    x=linspace(a,b,n);
    y=f(x);
    s=spline(x,y,z);
    plot(x,y,'ko',z,fz,'r',z,s,'b','linewidth',3)
    err=norm(s-fz,inf) %max(abs(s-fz))IL MASSIMO ERRORE CHE SI PUO' 
    %SBAGLIARE
    pause
end
