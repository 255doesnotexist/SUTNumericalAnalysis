temp=[200 250 300 375 425 475 600];
elo=[4.2 5.3 5.4 6.7 8 9.4 12];

x=temp;
y=elo;
% n=7
n=length(x);

a1=(n*sum(x.*y)-sum(x)*sum(y))/   (n* sum(x.^2) -sum(x)^2)

a0=sum(y)/n - a1/n*sum(x)

A=[...
    n       sum(x)
    sum(x)  sum(x.^2)];
B=[ sum(y)
    sum(x.*y)];

aaaa=A\B
xx=0:0.1:600;
plot(x,y,'.r','MarkerSize',10)
P=@(x) a1.*x+a0;

hold on

plot(xx,P(xx),'b','LineWidth',4)
