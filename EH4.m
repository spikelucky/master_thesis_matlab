close all;
clear all;

load('ele_hys_4.txt');
z4=length(ele_hys_4);
s4=(ele_hys_4(1:z4,2));
smax4=max(s4);
sp4=s4/smax4*100;
T41=(ele_hys_4(1:z4,3));
T42=(ele_hys_4(1:z4,4));
t4=(.1:.1:z4/10)';

scrsz=get(0,'Screensize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
plot(t4,sp4,t4,T41,t4,T42);
xlim([0 50]);
%ylim([-1 75]);
ylim([-1 230]);
xlabel('Time / s');
ylabel('Data');
title('Joule heating - hysteresis 4');
grid on;
legend('Strain','Temperature 1','Temperature 2','Location','Best');