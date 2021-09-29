close all;
clear all;

load('test4.txt');
z=length(test4);
s=(test4(1:z,2));
T1=(test4(1:z,3));
T2=(test4(1:z,4));
t=(.1/60:.1/60:z/600)';
plot(t,s,t,T1,t,T2);
%xlim([40 90]);
%ylim([-1 100]);
xlabel('Time / min');
ylabel('Data');
title('Last test - hydraulic heating');
legend('Strain','Temperature 1','Temperature 2','Location','Best');
grid on;