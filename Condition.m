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

scrsz=get(0,'Screensize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
subplot(3,2,2);
plot(k(:,1),k(:,2),k(:,1),c,'r');
ylim([0 5]);
xlabel('Resistance / Ohm');
ylabel('K4');
title('Condition of the 4th step of the temerature algorithm');
legend('Condition','Boundary value','Location','Northeast');
grid on;

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

subplot(3,2,4);
plot(k(:,1),k(:,2),k(:,1),c,'r');
ylim([0 1.1]);
xlabel('Voltage / V');
ylabel('K4');
title('Condition of the 4th step of the temerature algorithm --- Range: 0 V - 5 V');
legend('Condition','Boundary value','Location','Northeast');
grid on;

syms x K y dy;
y=3435/log(x);
dy=diff(y);
K=symfun(abs((x*dy)/y),(x));
dV=0.0000001;
V=dV;
k=zeros(2000,2);

for i=1:length(k)
    
    R=10000*V/((5-V)*0.0992);
    k(i,1)=V;
    k(i,2)=K(R);
    V=V+dV;
    
end

c=zeros(length(k),1);
c(:)=1;

subplot(3,2,6);
plot(k(:,1),k(:,2),k(:,1),c,'r');
xlim([0 0.0002]);
ylim([0 2]);
xlabel('Voltage / V');
ylabel('K4');
title('Condition of the 4th step of the temerature algorithm --- Range: 0.1 uV - 0.2 mV');
legend('Condition','Boundary value','Location','Northeast');
grid on;

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

subplot(3,2,1);
plot(k(:,1),k(:,2),k(:,1),c,'r');
ylim([0 2]);
xlabel('Voltage / V');
ylabel('Condition');
title('Condition of the temerature algorithm');
legend('Condition','Boundary value','Location','Northeast');
grid on;

syms xa xb K y dy;
y=3435/log(10000*xa/(0.0992*xb));
dy=diff(y);
Ka=symfun(abs((xa*dy)/y),[xa xb]);
Kb=symfun(abs((xb*dy)/y),[xa xb]);
dV=0.01;
V=dV;
k=zeros(499,3);

for i=1:length(k)
    
    aa=V;
    ab=5-V;
    k(i,1)=V;
    k(i,2)=Ka(aa,ab);
    k(i,3)=Kb(aa,ab);
    V=V+dV;
    
end

c=zeros(length(k),1);
c(:)=1;

subplot(3,2,3);
plot(k(:,1),k(:,2),k(:,1),c,'r');
ylim([0 1.1]);
xlabel('Voltage / V');
ylabel('K2');
title('Condition of the 2nd step of the temerature algorithm');
legend('Condition','Boundary value','Location','Northeast');
grid on;

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

subplot(3,2,5);
plot(k(:,1),k(:,2),k(:,1),c,'r');
ylim([0 1.1]);
xlabel('Voltage / V');
ylabel('K3');
title('Condition of the 3rd step of the temerature algorithm');
legend('Condition','Boundary value','Location','Northeast');
grid on;