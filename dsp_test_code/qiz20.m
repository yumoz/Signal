clc;
clear all;
x1n=ones(1,4);
subplot(221);
stem(x1n);
title('x1(n)');
yn1=fft(x1n,8);
subplot(222);
stem(yn1);
title('8µãfft');

yn2=fft(x1n,16);
subplot(223);
stem(yn2);
title('16µãfft');