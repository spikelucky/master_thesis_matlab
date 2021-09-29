close all;
clear all;

load('hyd_stp_5.txt');
z5=length(hyd_stp_5);
s5=(hyd_stp_5(1:z5,2))/7.5*6;
T51=(hyd_stp_5(1:z5,3));
T52=(hyd_stp_5(1:z5,4));
t5=(.1:.1:z5/10)';
load('ele_stp_1.txt');
z1=length(ele_stp_1);
s1=(ele_stp_1(1:z1,2))/6*7.5;
T11=(ele_stp_1(1:z1,3));
T12=(ele_stp_1(1:z1,4));
t1=(8-350:8:z1*8-350)';

scrsz=get(0,'Screensize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
xlabel('Time / s');
ylabel('Data');
plot(t5,s5,t5,T51,t5,T52,t1,s1,t1,T11,t1,T12);
xlim([-50 210]);
%ylim([-1 210]);
xlabel('Time / s');
ylabel('Data');
title('Joule heating - step response 1');
legend('Joule - Strain','Joule - Temperature 1','Joule - Temperature 2',...
    'Hydraulic - Strain','Hydraulic - Temperature 1',...
    'Hydraulic - Temperature 2','Location','NorthWest');
grid on;