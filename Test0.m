%close all;
clear all;

load('test0.txt');
z=length(test0);
s=(test0(1:z,2));
T1=(test0(1:z,3));
T2=(test0(1:z,4));
t=(1:1:z)';
figure(2);
plot(t,s,t,T1,t,T2);
%xlim([85000 90000]);
ylim([-1 5]);
xlabel('Time');
ylabel('Data');
title('test0');
legend('Strain','Temperature 1','Temperature 2');
grid on;