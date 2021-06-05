clc;
clear all;
n=0:1:3;
x0n=4-n;
n=4:1:7;
x1n=n-3;

x2n=[x0n x1n];
n=0:7;
subplot(221);
stem(n,x2n,'ro','fill');
title('x2(n)');
yn1=fft(x2n,8);

subplot(222);
stem(n,yn1,'fill');
title('8µãfft');

yn2=fft(x2n,16);
subplot(223);
stem(yn2,'fill');
title('16µãfft');