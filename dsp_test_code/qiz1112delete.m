clc
clear all;
%���� ti4.m 
A=[1,-1.6,0.9425]; %H(z) �ķ�ĸ����ʽϵ��
B1=1; B2=[1,-0.3]; B3=[1,-0.8]; 
B4=[1,-1.6,0.8]; %H(z) ���Ӷ���ʽϵ��
b1=[1,0,0];b2=[1,-0.3,0];b3=[1,-0.8,0]; 
b4=[1,-1.6,0.8]; %H(z) �������ݷ��Ӷ���ʽϵ��
p=roots(A); % �� H1(z),H2(z),H3 ��z����H4�� z���ļ���
z1=roots(b1); %�� H1(z) �ļ���
z2=roots(b2); %�� H2(z)�ļ���
z3=roots(b3); % �� H3(z) �ļ���
z4=roots(b4); %�� H4(z)�ļ���
[h1n, n]=impz(B1, A, 100); % ���㵥λ������ h1(n)�� 100 ����ֵ
[h2n, n]=impz(B2, A, 100); % ���㵥λ������ h2(n)�� 100 ����ֵ
[h3n, n]=impz(B3, A, 100); % ���㵥λ������ h3(n)�� 100 ����ֵ
[h4n, n]=impz(B4, A, 100); % ���㵥λ������ h4(n)�� 100 ����ֵ
%----------------------------------------------------------- 
%�����ǻ�ͼ����
subplot(2, 2, 1); 
zplane(B1, A); % ���� H1(z) ���㼫��ͼ
title('H1(z) ���㼫��ͼ');
subplot(2, 2, 2); 
stem(n,h1n,'.'); %���� h1(z)�Ĳ���ͼ
title('h1(z)�Ĳ���ͼ');
line([0,100],[0,0]); 
xlabel('n'); ylabel('h1(n)'); 
subplot(2, 2, 3); 
zplane(B2, A); % ���� H2(z) ���㼫��ͼ
title('H2(z) ���㼫��ͼ');
subplot(2, 2, 4); 
stem(n,h2n,'.'); %���� h2(z)�Ĳ���ͼ
title('h2(z)�Ĳ���ͼ');
line([0,100],[0,0]) 
xlabel('n'); ylabel('h2(n)'); 
figure(2); subplot(2,2,1); 
zplane(B3, A); % ���� H3(z) ���㼫��ͼ
title('H3(z) ���㼫��ͼ');
subplot(2, 2, 2); 
stem(n,h3n,'.'); %���� h3(z)�Ĳ���ͼ
title('h3(z)�Ĳ���ͼ');
line([0,100],[0,0]); 
xlabel('n'); ylabel('h3(n)'); 
subplot(2, 2, 3); 
zplane(B4, A); % ���� H4(z) ���㼫��ͼ
title('H3(z) ���㼫��ͼ');
subplot(2, 2, 4); 
stem(n,h4n,'.'); %���� h4(z)�Ĳ���ͼ
title('h4(z)�Ĳ���ͼ');
line([0,100],[0,0]); 
xlabel('n'); ylabel('h4(n)'); 

%��Ŀ�����ʷ������¶����֣�
%����ϵͳ�����ļ���ֲ�һ���� ֻ����㲻ͬ�� ��һ�������ԭ�㣬 ��Ӱ��
%ϵͳ��Ƶ�����ԣ� Ҳ��Ӱ�쵥λ������Ӧ�� �ڶ��ֵ������ʵ���ϣ� ���뼫���Զ�� ��
%���ֵ���㿿�����㡣 �����ֵ����ǳ��������㣬 �Ƚ����ǵĵ�λ������Ӧ�� �ᷢ
%��������������㣬 ��λ������Ӧ�ı仯�������� ������Լ����������������ã� ͬ
%ʱ�� ��������������㣬 �������ø�����