clc;
clear all;
%4.8
n=0:0.5:15;
f=300;
a=0.7;
x=(exp(-a*n)).*sin(2*pi*f*n);
stem(n,x,'.');
xlabel('n');
ylabel('x8(n)');
title('À•ºı’˝œ“–Ú¡–');