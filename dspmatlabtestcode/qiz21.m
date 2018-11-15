clc;
clear all;
n=0:1:3;
x0n=n+1;
n=4:1:7;
x1n=8-n;

x2n=[x0n x1n];
subplot(221);
stem(x2n);
title('x1(n)');
yn1=fft(x2n,8);
subplot(222);
stem(yn1);
title('8µãfft');

yn2=fft(x2n,16);
subplot(223);
stem(yn2);
title('16µãfft');