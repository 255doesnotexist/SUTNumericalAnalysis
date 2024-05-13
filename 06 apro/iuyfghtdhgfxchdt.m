close all
clear all
clc
f=@(x)sin(x)

A=[pi/2 pi^2/8
    pi^2/8 pi^3/24];
B=[1
    1];

a=A\B

P=@(x) a(2)*x+a(1)


xx=0:0.01:pi/2;
plot(xx,f(xx),'g','LineWidth',3)
hold on
plot(xx,P(xx),'r','LineWidth',3)
