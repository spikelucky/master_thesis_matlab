% Krel(f,x) = abs(x*f'(x)/f(x))

clear all;
close all;

syms x K y dy;
y=3435/log(x);
dy=diff(y);
K=symfun(abs((x*dy)/y),(x));
dV=0.01;
V=dV;
k=zeros(499,2);

for i=1:length(k)
    
    R=10000*V/((5-V)*0.0992);
    k(i,1)=V;
    k(i,2)=K(R);
    V=V+dV;
    
end

c=zeros(length(k),1);
c(:)=1;
plot(k(:,1),k(:,2),k(:,1),c,'r');
ylim([0 1.1]);
xlabel('Voltage / V');
ylabel('K4');
title('Condition of the 4th step of the temerature algorithm');
legend('Condition','Boundary value','Location','Best');