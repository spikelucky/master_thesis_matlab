% Krel(f,x) = abs(x*f'(x)/f(x))

clear all;
close all;

syms x K y dy;
y=3435/log(x);
dy=diff(y);
K=symfun(abs((x*dy)/y),(x));
da=0.01;
a=da;
k=zeros(499,2);

for i=1:length(k)-400
    
    k(i,1)=a;
    k(i,2)=K(a);
    a=a+da;
    
end
a=1.01;
for i=100:length(k)
    
    k(i,1)=a;
    k(i,2)=K(a);
    a=a+da;
    
end

c=zeros(length(k),1);
c(:)=1;
plot(k(:,1),k(:,2),k(:,1),c,'r');
ylim([0 5]);
xlabel('Resistance / Ohm');
ylabel('K4');
title('Condition of the 4th step of the temerature algorithm');
legend('Condition','Boundary value','Location','Best');