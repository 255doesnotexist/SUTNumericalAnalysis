
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
    while (1)
        xi=(a*f(b)-b*f(a))/(f(b)-f(a));
        plot(xi,f(xi),".r","MarkerSize",30)

        if (f(xi)==0 || eps>= (b-a)/2 || i>iLimit)
            break;
        end
        if (f(xi)*f(a)>0)
            a=xi;
            b=b;
        else
            a=a;
            b=xi;
        end
        i=i+1;
    end
else
    disp("no possible ")
end

i