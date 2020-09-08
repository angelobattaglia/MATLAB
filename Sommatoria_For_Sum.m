%sommatoria con for
v=[1:30];
y1=log(v);
y2=sqrt(v);
j=0;
for i=1:30
k=y1(i)/y2(i);
j=j+k
end
j