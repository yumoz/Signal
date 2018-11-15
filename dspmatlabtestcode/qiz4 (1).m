clc;
clear all;
%an=zeros(1,5);
%stem(an);
%hold on;
n=0:3;
x2=n+1;

stem(n,x2,'.')
hold on
n=4:7;
x2=8-n;
stem(n,x2,'.');
xlabel('n');ylabel('x2(n)');title('x2(n)');
