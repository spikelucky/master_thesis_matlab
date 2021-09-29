% Krel(f,x) = abs(x*f'(x)/f(x))

clear all;
close all;

syms xa xb K y dy;
y=3435/log(xa/xb);
dy=diff(y);
Ka=symfun(abs((xa*dy)/y),[xa xb]);
Kb=symfun(abs((xb*dy)/y),[xa xb]);
dV=0.01;
V=dV;
k=zeros(499,3);

for i=1:length(k)
    
    aa=10000*V;
    ab=(5-V)*0.0992;
    k(i,1)=V;
    k(i,2)=Ka(aa,ab);
    k(i,3)=Kb(aa,ab);
    V=V+dV;
    
end

c=zeros(length(k),1);
c(:)=1;
plot(k(:,1),k(:,2),k(:,1),c,'r');
ylim([0 1.1]);
xlabel('Voltage / V');
ylabel('K3');
title('Condition of the 3rd step of the temerature algorithm');
legend('Condition','Boundary value','Location','Best');