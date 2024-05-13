clc
clear all

A=[ pi/2 pi^2/8
    pi^2/8 pi^3/24]

B=[1
    1]

aa=A\B

f=@(x) sin(x)

p=@(x) aa(1).*x.^0+aa(2).*x.^1

xx=0:0.01:pi/2 *1.1
figure(10)
plot(xx, f(xx), 'r');
hold on
plot(xx, p(xx), 'g');