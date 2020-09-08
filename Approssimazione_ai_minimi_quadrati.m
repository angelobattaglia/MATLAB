%Approssimazione nel senso dei minimi quadrati con polinomi di grado 2 3 4
%di una serie di dati sperimentali. 
%Si costruisca la parabola p(x) approssimante nel senso dei minimi quadrati+
%la nuvola di punti con coordinate:
%x=[-2 -1.3 -1 -0.7 -0.4 -0.1]
%y=[0.3 0.5 1.5 1.3 0.8 0.1]
%Quanto vale, approssimando, la quantita' |p(3)-1.5|?
x=[-2 -1.3 -1 -0.7 -0.4 -0.1];
y=[0.3 0.5 1.5 1.3 0.8 0.1];
xx=linspace(-2,-0.1);
c_2=polyfit(x,y,2);
%c_3=polyfit(x,y,3);
%c_4=polyfit(x,y,4);
polinomio2=polyval(c_2,3);
%polinomio3=polyval(c_3,xx);
%polinomio4=polyval(c_4,xx);
%c_2val=polyval(c_2,);
qta=abs(polinomio2-1.5)
%qta=abs(p(3)-1.5)
%figure
%plot(x,y,'ko',xx,polinomio2,'b','linewidth',2);
%plot(xx,polinomio3,'r',xx,polinomio4,'p',x,y,'ko',xx,polinomio2,'b','linewidth',2);