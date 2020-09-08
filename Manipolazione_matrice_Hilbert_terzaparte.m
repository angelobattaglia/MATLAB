A=hilb(80);
c=0;
for i=1:80
for j=1:80
    if A(i,j)<0.05
    c=c+A(i,j);
    end
end
end
c