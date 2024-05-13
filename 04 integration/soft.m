f=@(x) x^5 + 1 ;
f1=@(x) 5*x^4
f2=@(x) 20*x^3
f3=@(x) 60*x^2
f4=@(x) 120*x
a=0;
b=1.5;
eps = 0.0001;
EVofI=3.3984375
IntegralTr=(f(a)+f(b))*(b-a)/2
x0=a;
x1=(a+b)/2;
x2=b;

IntegralPar=(b-a)/2 *(f(x1)+4*f(x1)+f(x2))/3

h5N=(b-a)/5;
x0=a;
h=h5N;
x1=x0+h;
x2=x1+h;
x3=x2+h;
x4=x3+h;
x5=x4+h;
Integral_5N=h*(5/288)*(19*f(x0)+75*f(x1)+50*f(x2)+50*f(x3)+75*f(x4)+19*f(x5))




ErrEstTr=f2(b)/12*(b-a)^3;

ErrEstPar=f4(b)/90 *((b-a)/2)^5;