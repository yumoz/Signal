clc;
clear all;
n=-50:0.5:50;
y=sin(pi*n/8);
subplot(3,1,1)
stem(n,y,'.');xlabel('n');ylabel('y0');title('第三题全部图');

m=-10:0.1:10;
y1=sin(4*pi*m/5);
subplot(3,1,2);
stem(m,y1,'.');xlabel('n');ylabel('y1');

p=-30:0.5:30;
y2=sin(p/4);
subplot(3,1,3);
stem(p,y2,'.');xlabel('n');ylabel('y2');
