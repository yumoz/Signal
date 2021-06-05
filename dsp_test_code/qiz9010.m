clc
clear all;
B=[0,0,1 ,5 -50];
A=[2,-2.98,0.17,2.3418,-1.5147];
subplot(2,1,1); 
zplane(B,A);
p=roots(A);
pm=abs(p);
if  max(pm)<1 disp('系统稳定') ,else ,disp('系统不稳定'),end
un=ones(1,700);%help impz
sn=filter(B,A,un);
n=0:length(sn)-1;
subplot(2,1,2);
plot(n,sn)
xlabel('n');
ylabel('s(n)')
%系统因果稳定
%(2) 系统对应单位阶跃函数响应如图所示，他趋于稳态值，因此系统稳定