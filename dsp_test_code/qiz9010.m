clc
clear all;
B=[0,0,1 ,5 -50];
A=[2,-2.98,0.17,2.3418,-1.5147];
subplot(2,1,1); 
zplane(B,A);
p=roots(A);
pm=abs(p);
if  max(pm)<1 disp('ϵͳ�ȶ�') ,else ,disp('ϵͳ���ȶ�'),end
un=ones(1,700);%help impz
sn=filter(B,A,un);
n=0:length(sn)-1;
subplot(2,1,2);
plot(n,sn)
xlabel('n');
ylabel('s(n)')
%ϵͳ����ȶ�
%(2) ϵͳ��Ӧ��λ��Ծ������Ӧ��ͼ��ʾ����������ֵ̬�����ϵͳ�ȶ�