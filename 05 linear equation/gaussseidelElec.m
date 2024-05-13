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
        if(i<j)
            U(i,j)=A(i,j);
        end
    end
end
U

for i=1:n
    for j=1:n
        if(i>=j)
            L(i,j)=A(i,j);
        end
    end
end
L

x=[0 0 0  0 0]
x1=x;
xkp1=inv(L)*(B-U*x1')

for i=1:1000
    i
    xkp1=inv(L)*(B-U*xkp1)
end