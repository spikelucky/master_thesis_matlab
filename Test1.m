close all;
clear all;

load('test1.txt');
z=length(test1);
s=(test1(1:z,2));
T1=(test1(1:z,3));
T2=(test1(1:z,4));
t=(.1/60:.1/60:z/600)';
plot(t,s,t,T1,t,T2);
xlim([142 146]);
ylim([-1 500]);
xlabel('Time / min');
ylabel('Data');
title('Last test - hydraulic heating');
legend('Strain','Temperature 1','Temperature 2','Location','Best');
grid on;