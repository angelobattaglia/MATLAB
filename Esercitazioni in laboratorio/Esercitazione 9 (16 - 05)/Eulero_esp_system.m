function [x,y] = Eulero_esp_system(f,x_0,y_0,x_N,N)
h=(x_N-x_0)/N;
x=(x_0:h:x_N)';
m=length(y_0);
y=zeros(m,N+1);
y(:,1)=y_0; %il comando : vuol dire considera tutti i valori della prima colonna
for n=1:N
    fn=f(x(n),y(:,n));
    y(:,n+1)=y(:,n)+h*fn;
end
y=y';
end