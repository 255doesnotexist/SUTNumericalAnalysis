
a=1.00
b=2.00
eps=0.00010
% f= @(x) log(x)
% 1.00  2.00  0.00010  f= @(x) x*x*x*x-2  
f= @(x) x.*x.*x.*x-2 
i=1



if f(b)*f(a)<0
    disp("we can do it")
    xk=a-f(a)*(b-a)/(f(b)-f(a));%%k=1
    while(1)
        xkp1=xk-f(xk)*(b-xk)/(f(b)-f(xk))
        if (f(xi)==0 || i>100 ||eps>= (b-a)/2)
            break
        end

        if (f(xi)*f(a)>0)
            a=xi;
        else
            b=xi;
        end
        i=i+1
    end
else
    disp("we can't")
end