clear all;
AB=[   1.33  1.00  0.90  0.80  0.70    1.70
    4.03  3.03  3.00  2.50  2.40    3.00
    4.00  2.00 10.00  3.50  8.00    1.00
    1.00  1.00  1.00  2.00  1.00   10.00
    2.00  2.00  2.00  3.00  5.00    8.00]

A=AB(:,1:end-1)

B=AB(:,end)

L=zeros(size(A))
U=zeros(size(A))
n=size(A,1)



for i=1:n
    for j=1:n
        if(i==j)
            P(i,j)=A(i,j);
        end
    end
end
P

for i=1:n
    for j=1:n
        if(i~=j)
            N(i,j)=A(i,j);
        end
    end
end
N
x1=zeros(n,1)

xi=inv(P)*B-inv(P)*N*x1
i=1
while(1)
    xip1=inv(P)*B-inv(P)*N*xi;
    
    i=i+1;
    if(i>=100 || abs(sum(xi)-sum(xip1))<0.00001)
        break
    end
    xi=xip1
    
end