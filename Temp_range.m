clear all;
close all;

syms x y;
y=symfun(3435/log((10000*x)/((5-x)*0.0992))-273.15,(x));
da=0.001;
a=da;
k=zeros(4999,2);

for i=1:length(k)
    
    k(i,1)=a;
    k(i,2)=y(a);
    a=a+da;
    
end

f=zeros(length(k),1);
b=zeros(length(k),1);
b(:)=100;
o=zeros(length(k),1);
o(:)=150;
u=zeros(length(k),1);
u(:)=-60;

plot(k(:,1),k(:,2),'k',k(:,1),f(:,1),'b',k(:,1),b(:,1),'r',...
    k(:,1),u(:,1),'g',k(:,1),o(:,1),'g');
ylim([-100 200]);
xlabel('Voltage / V');
ylabel('Temperature');
title('Theoretical temperature range');
legend('Temperature','Freezing point','Boiling point',...
    'NTC range from data sheet','Location','Northeast');