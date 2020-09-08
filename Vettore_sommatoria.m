%Sia  il vettore
%contenente gli interi
%tra  e  (estremi inclusi). L'espressione 
%vale circa:


v=[1:50];
r=0;
for i=1:50
r=r+v(i)/exp(v(i));
end
r