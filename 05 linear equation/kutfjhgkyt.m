clear all;
AB=[10.00  1.00  1.00   12.00
    2.00 10.00  1.00   13.00
    2.00  2.00 10.00   14.00]

A=AB(:,1:end-1)

B=AB(:,end)

P=zeros(size(A))
N=zeros(size(A))
n=size(A,1)
for i=1:n
    P(i,i)=A(i,i);
end

for j=1:n
    for i=1:n
        if (j~=i)
            N(j,i)=A(j,i)
        end
    end
end
P
N

x=zeros(n,1)

X=inv(P)*N*x+inv(P)*B