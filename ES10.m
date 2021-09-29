close all;
clear all;

load('ele_stp_10.txt');
z10=length(ele_stp_10);
s10=(ele_stp_10(1:z10,2));
smax10=max(s10);
sp10=s10/smax10*100;
T101=(ele_stp_10(1:z10,3));
T102=(ele_stp_10(1:z10,4));
t10=(.1:.1:z10/10)';

scrsz=get(0,'Screensize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
plot(t10,sp10,t10,T101,t10,T102);
xlim([4 8]);
%ylim([-1 65]);
ylim([-1 310]);
xlabel('Time / s');
ylabel('Data');
title('Joule heating - step response 10');
legend('Strain','Temperature 1','Temperature 2','Location','NorthEast');
grid on;