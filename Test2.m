close all;
clear all;

load('test2.txt');
z=length(test2);
s=(test2(1:z,2));
t=(1:1:z)';
plot(t,s);
%xlim([10 z]);
%xlim([590 610]);
xlabel('Time');
ylabel('Strain');
title('LVDT first test with circuit');
grid on;