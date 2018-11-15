clc;
clear all;
a=0.8;
n=0:1:11;
x=a.^n;
figure(1);
stem(x);
%axis([-1 ,15, 0, 1000]);
title('实指数序列')
ylabel('y(n)');
xlabel('n');