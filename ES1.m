close all;
clear all;

load('ele_stp_1.txt');
z1=length(ele_stp_1);
s1=(ele_stp_1(1:z1,2))/6*7.5;
smax1=max(s1);
sp1=s1/smax1*100;
T11=(ele_stp_1(1:z1,3));
T12=(ele_stp_1(1:z1,4));
t1=(.1:.1:z1/10)';

scrsz=get(0,'Screensize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
plot(t1,sp1,t1,T11,t1,T12);
xlim([3 7.5]);
ylim([-1 101]);
xlabel('Time / s');
ylabel('Data');
title('Joule heating - step response 1');
legend('Strain','Temperature 1','Temperature 2','Location','NorthEast');
grid on;