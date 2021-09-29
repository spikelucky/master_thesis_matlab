close all;
clear all;

load('hyd_stp_1.txt');
z1=length(hyd_stp_1);
s1=(hyd_stp_1(1:z1,2))/6*4.5;
smax1=max(s1);
sp1=s1/smax1*100;
T11=(hyd_stp_1(1:z1,3));
T12=(hyd_stp_1(1:z1,4));
t1=(.1:.1:z1/10)';
load('hyd_stp_2.txt');
z2=length(hyd_stp_2);
s2=(hyd_stp_2(1:z2,2))/6*5;
smax2=max(s2);
sp2=s2/smax2*100;
T21=(hyd_stp_2(1:z2,3));
T22=(hyd_stp_2(1:z2,4));
t2=(.1:.1:z2/10)';
load('hyd_stp_3.txt');
z3=length(hyd_stp_3);
s3=(hyd_stp_3(1:z3,2))/6*5;
smax3=max(s3);
sp3=s3/smax3*100;
T31=(hyd_stp_3(1:z3,3));
T32=(hyd_stp_3(1:z3,4));
t3=(.1:.1:z3/10)';
load('hyd_stp_4.txt');
z4=length(hyd_stp_4);
s4=(hyd_stp_4(1:z4,2))/6*5;
smax4=max(s4);
sp4=s4/smax4*100;
T41=(hyd_stp_4(1:z4,3));
T42=(hyd_stp_4(1:z4,4));
t4=(.1:.1:z4/10)';
load('hyd_stp_5.txt');
z5=length(hyd_stp_5);
s5=(hyd_stp_5(1:z5,2))/7.5*6;
smax5=max(s5);
sp5=s5/smax5*100;
T51=(hyd_stp_5(1:z5,3));
T52=(hyd_stp_5(1:z5,4));
t5=(.1:.1:z5/10)';
load('hyd_stp_6.txt');
z6=length(hyd_stp_6);
s6=(hyd_stp_6(1:z6,2))/7*6;
smax6=max(s6);
sp6=s6/smax6*100;
T61=(hyd_stp_6(1:z6,3));
T62=(hyd_stp_6(1:z6,4));
t6=(.1:.1:z6/10)';
load('hyd_stp_7.txt');
z7=length(hyd_stp_7);
s7=(hyd_stp_7(1:z7,2));
smax7=max(s7);
sp7=s7/smax7*100;
T71=(hyd_stp_7(1:z7,3));
T72=(hyd_stp_7(1:z7,4));
t7=(.1:.1:z7/10)';

scrsz=get(0,'Screensize');
figure('Position',[1 scrsz(4) scrsz(3) scrsz(4)])
subplot(2,4,1);
plot(t1,sp1,t1,T11,t1,T12);
%xlim([0 7.5]);
ylim([-1 101]);
xlabel('Time / s');
ylabel('Data');
title('Hydraulic heating - step response 1');
grid on;
subplot(2,4,2);
plot(t2,sp2,t2,T21,t2,T22);
%xlim([0 50]);
ylim([-1 101]);
xlabel('Time / s');
ylabel('Data');
title('Hydraulic heating - step response 2');
grid on;
subplot(2,4,3);
plot(t3,sp3,t3,T31,t3,T32);
%xlim([0 30]);
ylim([-1 101]);
xlabel('Time / s');
ylabel('Data');
title('Hydraulic heating - step response 3');
grid on;
subplot(2,4,4);
plot(t4,sp4,t4,T41,t4,T42);
%xlim([0 4]);
ylim([-1 101]);
xlabel('Time / s');
ylabel('Data');
title('Hydraulic heating - step response 4');
grid on;
subplot(2,4,5);
plot(t5,sp5,t5,T51,t5,T52);
xlim([0 200]);
ylim([-1 101]);
xlabel('Time / s');
ylabel('Data');
title('Hydraulic heating - step response 5'); % factor 7.5 offset 4.79
grid on;
subplot(2,4,6);
plot(t6,sp6,t6,T61,t6,T62);
xlim([0 200]);
ylim([-1 101]);
xlabel('Time / s');
ylabel('Data');
title('Hydraulic heating - step response 6'); % factor 7 offset 4.74
% pumped a little after initial stop (hot)
grid on;
subplot(2,4,7);
plot(t7,sp7,t7,T71,t7,T72);
%xlim([0 8]);
ylim([-1 101]);
xlabel('Time / s');
ylabel('Data');
title('Hydraulic heating - step response 7');
grid on;
% subplot(2,4,8);
% plot(t8,sp8,t8,T81,t8,T82);
% %xlim([0 8]);
% ylim([-1 85]);
% xlabel('Time / s');
% ylabel('Data');
% title('Hydraulic heating - step response 8');
legend('Strain','Temperature 1','Temperature 2','Location','Best');
% legend('boxoff');
% grid on;