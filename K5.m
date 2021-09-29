% Krel(f,x) = abs(x*f'(x)/f(x))

clear all;
close all;

syms x K y dy;
y=3435/x;
dy=diff(y);
K=symfun(abs((x*dy)/y),(x))