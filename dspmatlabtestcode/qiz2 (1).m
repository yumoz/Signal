clc;
clear all;
n=50;
x=zeros(1,n);
x(1)=1;
xn=0:n-1;
subplot(121);
stem(xn,x);
grid on
axis([-1 5 0 1.1]);
title('单位抽样信号序列delta（n）')
ylabel('delta（n）');
xlabel('n');
k=10;
x(k)=1;
x(1)=0;
subplot(122);
stem(xn,x);
grid on
axis([-1 10 0 1.1]);
title('单位抽样序列delta（n-10）')
ylabel('delta（n-10）');
xlabel('n');