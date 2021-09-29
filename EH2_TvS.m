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

T21_filter=zeros(1,length(T21));
a=120;
b=18;
for i=2:length(T21)
    T21_filter(i)=(a*(T21_filter(i-1))+b*(T21(i)))./(a+b);
end
    
% figure(2)
% plot(t2,T21,'r');
% hold on
% plot(t2,T21_filter);
% hold off

sp2_filter=zeros(1,length(sp2));
a=120;
b=18;
for i=2:length(sp2)
    sp2_filter(i)=(a*(sp2_filter(i-1))+b*(sp2(i)))./(a+b);
end
    
% figure(3)
% plot(t2,sp2,'r');
% hold on
% plot(t2,sp2_filter);
% hold off

scrsz=get(0,'Screensize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
plot(sp2,T21,sp2_filter,T21_filter,'r');
xlim([0 100]);
ylim([20 65]);
xlabel('Strain / %');
ylabel('Temperature / deg C');
title('Joule heating - hysteresis 2');
legend('raw data','filtered data','Location','Best');
grid on;