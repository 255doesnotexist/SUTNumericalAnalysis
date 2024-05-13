clc

AB=[...
    1.02 -0.05 -0.10   0.80
  -0.11  1.03 -0.05   0.85
  -0.11 -0.12  1.04   1.40]

A=AB(:,1:end-1);
B=AB(:,end);

n=size(A,1);

L=zeros(n,n)
U=zeros(n,n)

for i=1:n
    for j=1:i
   L(i,j)=A(i,j)
    end
end

L

U=A-L