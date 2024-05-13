clear all
clc
close all

  xy=[2.010     8.170
      2.180     8.350
      1.130     1.230
      2.050     8.610
      1.040     1.020
      3.020    27.780
      2.050     8.170
      2.020     8.640
      3.170    27.520
      2.190     8.330
      1.140     1.120
      2.010     8.130
      1.060     1.160
      2.060     8.160
      3.110    27.220
      3.050    27.210
      3.150    27.050
      3.050    27.330
      3.120    27.710
      1.170     1.260
      3.150    27.650
      1.120     1.080
      3.010    27.520
      3.110    27.350
      2.120     8.160
      3.090    27.100
      2.090     8.390
      2.140     8.150
      3.190    27.510
      2.150     8.600
      3.050    27.470
      3.160    27.290
      2.020     8.210
      2.140     8.290
      3.010    27.530
      2.050     8.600
      1.100     1.420
      2.080     8.360
      3.150    27.150
      3.020    27.300];

x=xy(:,1)
y=xy(:,2)
n=length(x)
plot(x,y,'.r','MarkerSize',10)
 hold on
polDegry=7

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
