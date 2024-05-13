
clc
clear all

a=0.00
b=1.00
eps=0.00010
% f= @(x) x.*x.*x-2
f= @(x) 10.*x.*x+sin(10.*x)-8

plot(-1:0.001:2,f(-1:0.001:2),"LineWidth",4)
hold on
i=1;
iLimit=100;

if f(a)*f(b)<0
    disp("it is possible")
    xk=b
    xkm1=a

    while (1)

        xkp1=  (xk-xkm1)/ (f(xk)-f(xkm1))

        
        plot(xi,f(xi),".r","MarkerSize",30)

        if (f(xk)==0 || f(xkp1) || i>iLimit)
            break;
        end
        xkp1=xk;
        xk=xkp1;
        i=i+1;
    end
else
    disp("no possible ")
end

i