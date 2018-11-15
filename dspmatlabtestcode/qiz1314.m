clc;
clear all;
%ti2.m
%频域采样定理习题
M=26;N=32; n=0:M;
xa=0:M/2; xb=ceil(M/2)-1:-1:0; xn=[xa,xb]; %产生M长三角序列x（n)
Xk=fft(xn,512);

X32k=fft(xn,32);
x32n=ifft(X32k);

X16k=X32k(1:2:N);
x16n=ifft(X16k,N/2);

subplot(322); stem(n,xn+1,'.'); 
box on
title('(b）三角波序列x(n)');xlabel('n');ylabel('x(n)');
axis([0,32,0,20])

k=0:511; wk=2*k/512;    %?????
subplot(321); plot(wk,abs(Xk)); 
title('(a)FT[x(n)]');xlabel('\omega/\pi');ylabel('|X(e^j^\omega))|');
axis([0,1,0,200]);

k=0:N/2-1;
subplot(323); stem(k,abs(X16k),'.'); box on
title('(c)16点频域采样');xlabel('k');ylabel('|X_1_6(k)|');
axis([0,8,0,200])

n1=0:N/2-1;
subplot(324); stem(n1,x16n,'.'); box on
title('(d)16点IDFT[X_1_6(k)]');xlabel('n');ylabel('x_1_6(n)');
axis([0,32,0,20])

k=0:N-1;
subplot(325); stem(k,abs(X32k),'.'); box on
title('(e)32点频域采样');xlabel('k');ylabel('|X_3_2(k)|')
axis([0,16,0,200]);

n1=0:N-1;
subplot(326); stem(n1,x32n,'.'); box on 
title('(f)32点IDFT[X_3_2（K）]');xlabel('n'); ylabel('x_3_2(n)'); 
axis([0,32,0,20])