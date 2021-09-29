close all;
clear all;

load('test3.txt');
z=length(test3);
s=(test3(1:z,2));
T1=(test3(1:z,3));
T2=(test3(1:z,4));
t=(.1/60:.1/60:z/600)';
plot(t,s,t,T1,t,T2);
%xlim([40 90]);
%ylim([-1 90]);
xlabel('Time / min');
ylabel('Data');
title('test before hyd. heating');
legend('Strain','Temperature 1','Temperature 2','Location','Best');
grid on;