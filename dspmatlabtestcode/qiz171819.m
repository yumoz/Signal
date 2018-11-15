clc;
clear all;
%ti3.m
Lx=10; N=5; M=20; %LxΪ�ź�����Ϊx(n)����
xn=ones(1,N);xn1=[xn ,zeros(1,Lx-N)]; %����h(n)�������Ϊ�˻�ͼ�ÿ�
n=0:Lx-1;
Lx=10; N=5; M=20; %LxΪ�ź�����Ϊx(n)����
hn=ones(1,N);hn1=[hn -ones(1,Lx-N)]; %����h(n)�������Ϊ�˻�ͼ�ÿ�
n=0:Lx-1;
yn=fftfilt(hn1,xn1,M); %����fftfilt���ص���ӷ�������

subplot(321);
stem(n,xn1,'.');
title('x(n)');xlabel('n');ylabel('x(n)');
axis([0,10,0,1.2])

subplot(322);
stem(n,hn1,'.');
title('h(n)');xlabel('n');ylabel('h(n)');
axis([0,10,-1.5,1.5])

subplot(323);
stem(n,yn,'.');
title('���Ծ��:y(n)=h(n)*x(n)');xlabel('n');ylabel('y(n)');
axis([0,10,-7,7])

x11=fft(xn1,10);
x12=fft(hn1,10);
y11=x11.*x12;
y1=ifft(y11,10);

subplot(326);
n=0:length(y1)-1;
stem(n,y1,'.');
title('10��ѭ������Ľ��');
xlabel('n');ylabel('y1(n)');

x111=fft(xn1,20);
x112=fft(hn1,20);
y111=x111.*x112;
y11=ifft(y111,20);

subplot(325);
n=0:length(y11)-1;
stem(n,y11,'.');
title('20��ѭ������Ľ��');
xlabel('n');ylabel('y2(n)');
