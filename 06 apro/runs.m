x=[100 200 400 800 1000 1500 2000 5000 10000 20000 42195]
wR=[10.49 21.34 47.60 113.28 148.98 230.07 321.56 846.62 1741.03 3601.11 8044.00]
mR=[9.58 19.19 43.03 100.91 131.96 206.00 284.79 755.36 1571.00 3380.02 7299.00]

n=length(x)

plot(x,wR,'or',"MarkerSize",8)
hold on
plot(x,mR,'ob',"MarkerSize",8)

A=[ n sum(x)
    sum(x) sum(x.^2)]

wB=[ sum(wR) 
    sum(x.*wR)]

mB=[ sum(mR) 
    sum(x.*mR)]

aW=A\wB;
aM=A\mB;

Pw=@(x) aW(2)*x+aW(1);
Pm=@(x) aM(2)*x+aM(1);
xx=1:42195
hold on
plot(xx,Pw(xx),'r','LineWidth', 2);
plot(xx,Pm(xx),'b','LineWidth', 2)


xT=log10(x)
wyT=log10(wR)
myT=log10(mR)

AT=[ n sum(xT)
    sum(xT) sum(xT.^2)]

wBT=[ sum(wyT) 
    sum(xT.*wyT)]

mBT=[ sum(myT) 
    sum(xT.*myT)]
aTw=AT\wBT
aTm=AT\mBT


P2w=@(x) 10^(aTw(1)+aTw(2).*log10(21.0975));

plot(xx,P2w(xx),'k','LineWidth', 2)




