close all;
clear all;

s=[0;1.4;2.4;4.4;5.9;9.5;12.8;16.5;19.25]; % factor 6
x=(0:2:16)';
p=polyfit(x,s,3);
q=polyfit(x,s,1);
y=polyval(p,x);
%z=polyval(q,x);
%m=[-1;2.5;6;9.5;13;16.5;20];
%n=[4;6;8;10;12;14;16];
l=27/16*x-7.5;
%c=s/6*(5.); % factor 5
plot(x,s,x,y,x,l);
xlim([0 16]);
ylim([0 20]);
xlabel('Distance Moved');
ylabel('Distance Measured');
title('Calibration Results');
legend('Data','Polyfit 3','Linearisation','Location','SouthEast');