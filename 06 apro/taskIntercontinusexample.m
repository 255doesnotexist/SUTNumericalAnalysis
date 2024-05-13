clear all
clc
close all
f=@(x) sin(x)


x=0:pi/2/100:pi/2;
y=f(x);
n=length(x)
plot(x,y,'.r','MarkerSize',10)
 hold on
polDegry=2

for d=1:10
    m=d
    for i=0:m*2
        S(i+1)=sum(x(:).^i);
    end
    %
    for i=0:m
        T(i+1)=sum((x.^i).*y);
    end

    Sm=zeros(m+1,m+1);

    for i=1:m+1
        Sm(i,:)=S(i:i+m);
    end

    aa=Sm\T'
    % aa=flip(aa)
    xxxx=0:0.001:6;

   


    for k=1:length(xxxx)
        yyyy(k)=AproPoly(aa,xxxx(k));
    end

    plot(xxxx, yyyy, "g")
end
% Sm
function y=AproPoly(a,x)
n=length(a);
y=0;
for i=0:n-1
    y=y+x^i * a(i+1);
end
end

