close all;
clear all;

load('test_copy.txt');
z=length(test_copy);
s=(test_copy(1:z,1));
t=(1:1:z)';
plot(t,s);
%xlim([10 z]);
%xlim([590 610]);
xlabel('Time');
ylabel('Strain');
title('LVDT test without circuit');
grid on;