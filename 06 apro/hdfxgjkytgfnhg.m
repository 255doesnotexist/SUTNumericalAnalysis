close all
clc
clear all
dist=[100 200 400 800 1000 1500 2000 5000 10000 20000 42195];
timeW=[10.49 21.34 47.60 113.28 148.98 230.07 321.56 846.62 1741.03 3601.11 8044.00];
timeM=[9.58 19.19 43.03 100.91 131.96 206.00 284.79 755.36 1571.00 3380.02 7299.00];
x=dist;
n=length(x);
y1=timeW;
y2=timeM;
plot(x,y1,'r.','MarkerSize',10)
hold on
plot(x,y2,'b.','MarkerSize',10)


A=[...
    n       sum(x)
    sum(x)  sum(x.^2)];
B1=[ sum(y1)
    sum(x.*y1)];

B2=[sum(y2)
    sum(x.*y2)];

aaW=A\B1
aaM=A\B2

P_w=@(x) aaW(2).*x+aaW(1);
P_m=@(x) aaM(2).*x+aaM(1);

xxxx=1:42195;
plot(xxxx,P_w(xxxx),'r','LineWidth',2)
% plot(xxxx,P_m(xxxx),'b','LineWidth',2)

Y1=log10(y1);
X=log10(x);


B1_T=[ sum(Y1)
    sum(X.*Y1)];

aaWT=A\B1_T;
a0=aaWT(1)
a1=aaWT(2)


w2=a1;
% w1=exp(a0)
w1=10^a0;

% P_wT=@(x) w1*exp(w2*x);
P_wT=@(x) w2.*(x.^w1);
plot(xxxx,P_wT(xxxx),'r--','LineWidth',2)



