close all
clear all;
clc% 
f=@(x) exp(sin(x))
% f1=@(x) 5*x^4
% f2=@(x) 20*x^3
% f3=@(x) 60*x^2
f4=@(x) exp(sin(x))*sin(x) - 4*exp(sin(x))*cos(x)^2 + exp(sin(x))*cos(x)^4 + 3*exp(sin(x))*sin(x)^2 - 6*exp(sin(x))*cos(x)^2*sin(x)

a=0;
b=1.5;
n=100;

h=(b-a)/n
green=0;
for i=1:n-1
    green=green+f(a+i*h);
end

greenP=0;
for i=1:2:n-1
    greenP=greenP+f(a+i*h);
end
blue =0;
for i=2:2:n-2
    blue=blue+f(a+i*h)
end    
IntTrComplex=h*((f(a)+f(b))/2 + green )

IntParComplex=h/3*(f(a)+f(b)+4*greenP+2*blue)
EVofI=3.3984375

% M2=f2(b)
% nT=((b-a)^3/(12*eps)*M2 )^(0.5)
M4=f4(b)
nP=((b-a)^5 /(180*eps)*M4)^(0.25)
% a=0;
% b=1.5;
% xx=a:0.001:b
% f5=@(x) exp(sin(x))*cos(x) - 10*exp(sin(x))*cos(x)^3 + exp(sin(x))*cos(x)^5 + 15*exp(sin(x))*cos(x)*sin(x) + 15*exp(sin(x))*cos(x)*sin(x)^2 - 10*exp(sin(x))*cos(x)^3*sin(x)
% f4=@(x) exp(sin(x))*sin(x) - 4*exp(sin(x))*cos(x)^2 + exp(sin(x))*cos(x)^4 + 3*exp(sin(x))*sin(x)^2 - 6*exp(sin(x))*cos(x)^2*sin(x)
% 
% for i=1:length(xx)
% ff5(i)=f5(xx(i));
% end
% 
% for i=1:length(xx)
% ff4(i)=f4(xx(i));
% end
% plot(xx,ff4)
% hold on
% plot(xx,f5)

[1 5 7 3 8 15 1 3 4 7 9 12 0 1]