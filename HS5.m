close all;
clear all;

load('hyd_stp_5.txt');
z5=length(hyd_stp_5);
s5=(hyd_stp_5(1:z5,2))/7.5*6;
smax5=max(s5);
sp5=s5/smax5*100;
T51=(hyd_stp_5(1:z5,3));
T52=(hyd_stp_5(1:z5,4));
t5=(.1:.1:z5/10)';

scrsz=get(0,'Screensize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
plot(t5,sp5,t5,T51,t5,T52);
xlim([0 200]);
ylim([-1 101]);
xlabel('Time / s');
ylabel('Data');
title('Hydraulic heating - step response 5'); % factor 7.5 offset 4.79
grid on;
legend('Strain','Temperature 1','Temperature 2','Location','NorthEast');