A=[3,-3.98,1.17,2.3418,-1.5147]; %实验2 第二题数据带入
disp('系统极点为：')
P=roots(A)  %求H（Z）得极点并显示
Pm=abs(P);
if  max(Pm)<1 disp('系统稳定') ,else ,disp('系统不稳定'),end
