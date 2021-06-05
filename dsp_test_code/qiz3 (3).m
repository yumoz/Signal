clc;
clear all;
n=0:0.2:10;
a=0;
b=2;
x=exp((a+b*j)*n);
figure(1);
stem(x);
%axis([-1 12 0 1.2]);
title('¸´Ö¸ÊýÐòÁÐ')
ylabel('y(n)');
xlabel('n');