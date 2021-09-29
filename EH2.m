close all;
clear all;

load('ele_hys_2.txt');
z2=length(ele_hys_2);
s2=(ele_hys_2(1:z2,2));
smax2=max(s2);
sp2=s2/smax2*100;
T21=(ele_hys_2(1:z2,3));
T22=(ele_hys_2(1:z2,4));
t2=(.1:.1:z2/10)';

scrsz=get(0,'Screensize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
plot(t2,sp2,t2,T21,t2,T22);
xlim([0 40]);
ylim([-1 101]);
xlabel('Time / s');
ylabel('Data');
title('Joule heating - hysteresis 2');
grid on;
legend('Strain','Temperature 1','Temperature 2','Location','Best');