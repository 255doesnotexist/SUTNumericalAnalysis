close all
clc
clear all
x=[200 250 300 375 425 475 600]
y=[4.2 5.3 5.4 6.7 8 9.4 12]
n=length(x)

plot(x,y,'or',"MarkerSize",8)

A=[ n sum(x)
    sum(x) sum(x.^2)]

B=[ sum(y) 
    sum(x.*y)]

a=A\B

P=@(x) a(2)*x+a(1);

xx=200:600;
hold on
plot(xx,P(xx))