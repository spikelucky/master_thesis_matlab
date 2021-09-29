close all;
clear all;

load('SC1000.dat');
z=length(SC1000);
a=(SC1000(1:z,1));
load('SC2000.dat');
b=(SC2000(1:z,1));



t=[1:1:z]';
plot(t,a,t,b*110);
%xlim([31000 31100]);
xlim([0 100000]);