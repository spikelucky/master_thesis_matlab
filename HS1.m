close all;
clear all;

load('hyd_stp_1.txt');
z1=length(hyd_stp_1);
s1=(hyd_stp_1(1:z1,2))/7.5*6;
smax1=max(s1);
sp1=s1/smax1*100;
T11=(hyd_stp_1(1:z1,3));
T12=(hyd_stp_1(1:z1,4));
t1=(.1:.1:z1/10)';

T11_filter=zeros(1,length(T11));
a=1200;
b=18;
for i=2:length(T11)
    T11_filter(i)=(a*(T11_filter(i-1))+b*(T11(i)))./(a+b);
end

T12_filter=zeros(1,length(T12));
a=1200;
b=18;
for i=2:length(T12)
    T12_filter(i)=(a*(T12_filter(i-1))+b*(T12(i)))./(a+b);
end

scrsz=get(0,'Screensize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
plot(t1,sp1,t1,T11,t1,T12,t1,T11_filter,'g');
xlim([0 350]);
ylim([-1 101]);
xlabel('Time / s');
ylabel('Data');
title('Hydraulic heating - step response 1');
legend('Strain','Temperature 1','Temperature 2','Location','NorthEast');
grid on;