clear all;
close all
clc

f = @(x)abs(x);
x = [-5.0   -4 -3 -2.5 0.0  2.5 3 4 5.0] %% nodes
x=[4.9240    4.3301    3.2139    1.7101    0.0000   -1.7101   -3.2139   -4.3301   -4.9240]
fx=f(x);

w_0=@(x) (x-0).*(x-5)/((-5-0)*(-5-5));
w_1=@(x) (x+5).*(x-5)/((0+5)*(0-5));
w_2=@(x) (x+5).*(x-0)/((5+5)*(5-0));


W=@(x)  w_0(x).*f(-5)+ w_1(x).*f(0)+ w_2(x).*f(5);
xx=-5:0.1:5;

plot(xx,f(xx),"LineWidth",4);
hold on
plot(xx,W(xx),"LineWidth",4);

plot(xx,w_0(xx),"LineWidth",4);
plot(xx,w_1(xx),"LineWidth",4);
plot(xx,w_2(xx),"LineWidth",4);





xx=-5:0.1:5;
for l=1:length(xx)


% x = [  -5.0  -2.5  0.0  2.5 5.0]
n=length(x);


matrix=zeros(n,n)
for i=1:n
    for j=1:n
        if i==j
            matrix(i,j)=xx(l)-x(i);
        else
            matrix(i,j)=x(i)-x(j);
        end
    end
end

w=zeros(n,1)

for k=1:n

    red=1;
    for t=1:n
        if t~=k
            red=red*matrix(t,t)
        end
    end
    green=1;
    for t=1:n
        if t~=k
            green=green *matrix(k,t)
        end
    end
    w(k)=red/green;
end

WW(l)=sum(fx.*w')

end

hold on
plot(xx,WW,"LineWidth",4);
% L=0
% for i=1:n
%     W=f(x(i))*w(i)








%%Chebyshev nodes

n=length(x) ;
m=0:n;
%% in <-1 1>
for i=1:length(m)-1
    ChebyshevX(i)=cos((2*m(i)+1)/(2*n) * pi);
end
ChebyshevX

ChebyshevX=ChebyshevX*((x(end)-x(1))/2)+((x(end)+x(1))/2);
ChebyshevX