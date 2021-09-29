% Krel(f,x) = abs(x*f'(x)/f(x))

clear all;
close all;

syms x K y dy;
y=3435/log((10000*x)/((5-x)*0.0992));
dy=diff(y);
K=symfun(abs((x*dy)/y),(x));
da=0.001;
a=da;
k=zeros(4999,2);

for i=1:length(k)
    
    k(i,1)=a;
    k(i,2)=K(a);
    a=a+da;
    
end

c=zeros(length(k),1);
c(:)=1;
plot(k(:,1),k(:,2),k(:,1),c,'r');
ylim([0 2]);
xlabel('Voltage / V');
ylabel('Condition');
title('Condition of the temerature algorithm');
legend('Condition','Boundary value','Location','Best');