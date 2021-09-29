close all;
clear all;

load('hyd_stp_5.txt');
z5=length(hyd_stp_5);
s5a=(hyd_stp_5(1:225,2))/7.5*6;
s5b=(hyd_stp_5(1675:1720,2))/7.5*6;
s5=[s5a;s5b];
T51a=(hyd_stp_5(1:225,3));
T51b=(hyd_stp_5(1675:1720,3));
T51=[T51a;T51b];
T52a=(hyd_stp_5(1:225,4));
T52b=(hyd_stp_5(1675:1720,4));
T52=[T52a;T52b];
t5a=(.1:.1:23)';
t5b=(23:.1:27)';
t5=[t5a;t5b];
load('ele_stp_1.txt');
z1=length(ele_stp_1);
s1=(ele_stp_1(1:z1,2))/6*7.5;
T11=(ele_stp_1(1:z1,3));
T12=(ele_stp_1(1:z1,4));
t1=(.1+17:.1:z1/10+17)';

scrsz=get(0,'Screensize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
xlabel('Time / s');
ylabel('Data');
plot(t5,s5,t5,T51,t5,T52,t1,s1,t1,T11,t1,T12);
xlim([18 27]);
%xlim([166 172]);
xlabel('Time / s');
ylabel('Data');
title('Joule heating - step response 1');
legend('Hydraulic - Strain','Hydraulic - Temperature 1',...
    'Hydraulic - Temperature 2','Joule - Strain','Joule - Temperature 1',...
    'Joule - Temperature 2','Location','NorthWest');
grid on;