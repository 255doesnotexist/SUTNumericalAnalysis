clear all
clc
close all
xy=[ 1.320     4.020
    0.610    -0.790
    1.800     4.390
    0.800    -0.880
    0.620    -0.760
    1.500     4.460
    0.510    -0.090
    0.910    -0.790
    0.170     0.030
    1.000     2.040
    1.420     4.140
    0.210     1.000
    1.420     4.090
    0.110     1.030
    0.310     1.580
    0.970     0.110
    0.820    -0.780
    0.510    -0.080
    0.810    -0.770
    1.520     4.060
    0.320     1.610
    0.710    -0.780
    0.960     0.010
    0.700    -0.770
    1.100     2.050
    2.020     5.150
    1.710     4.340
    0.800    -0.810
    0.960     0.050
    0.320     1.630];

x=xy(:,1)
y=xy(:,2)

plot(x,y,'.','MarkerSize',10)

% for 
DegreeOfPolynomial=100;
    % S=?
    % T=?
    m=DegreeOfPolynomial;


    for k=0:2*m
        S(k+1)=sum(x.^k);
    end

    for k=0:m
        T(k+1)=sum(y.*x.^k);
    end

    S
    T
    SM=zeros(m+1,m+1);

    for i=1:m+1
        SM(i,:)=S(i:i+m)
    end

    aa=SM\T'

    % P=@(x) aa(1)*x.^0+aa(2)*x.^1+aa(3)*x.^2+aa(4)*x.^3+aa(5)*x.^4+aa(6)*x.^5;
    
    
    % P=@(x,m) sum(aa.*(x.^(0:m)))
    xx=0:0.01:2.5
    hold on
    yy=PolyM(aa,xx)
    plot(xx,yy,'LineWidth',2)

% end


function y=PolyM(a,x)
y=0;
for i=1:length(a)
    y=y+a(i).*x.^(i-1);
end
end