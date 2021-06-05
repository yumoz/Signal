clc;
clear all;
%ti3.m
%Lx=10; N=5; M=20; %Lx为信号序列为x(n)长度
%xn=ones(1,N);xn1=[xn ,zeros(1,Lx-N)]; %产生h(n)其后补零是为了绘图好看

xn=[1,1, 1, 1, 1,  1, 1 ,1 ,1 ,1];
%hbn=[1,2.5,2.5,1];
%n=0:Lx-1;
%Lx=10; N=5; M=20; %Lx为信号序列为x(n)长度
%hn=ones(1,N);hn1=[hn -ones(1,Lx-N)]; %产生h(n)其后补零是为了绘图好看

hn=[1,2.5,2.5,1];
%n=0:Lx-1;
%yn=fftfilt(hn1,xn1,M); %调用fftfilt用重叠相加法计算卷积
yn=conv(xn,hn);

subplot(321);
stem(xn,'.');
title('x(n)');xlabel('n');ylabel('x(n)');
%axis([0,10,0,1.2])

subplot(322);
stem(hn,'.');
title('h(n)');xlabel('n');ylabel('h(n)');
%axis([0,10,-1.5,1.5])

subplot(323);
stem(yn,'.');
title('线性卷积:y(n)=h(n)*x(n)');xlabel('n');ylabel('y(n)');
%axis([0,10,-7,7])

x11=fft(xn,16);
x12=fft(hn,16);
y11=x11.*x12;
y1=ifft(y11,16);

subplot(326);
n=0:length(y1)-1;
stem(y1,'.');
title('16点循环卷积的结果');
xlabel('n');ylabel('y1(n)');

x111=fft(xn,20);
x112=fft(hn,20);
y111=x111.*x112;
y11=ifft(y111,20);

subplot(325);
%n=0:length(y11)-1;
stem(y11,'.');
title('20点循环卷积的结果');
xlabel('n');ylabel('y2(n)');
