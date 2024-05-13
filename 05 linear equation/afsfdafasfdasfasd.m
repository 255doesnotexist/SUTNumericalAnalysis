clc

AB=[...
    1.02 -0.05 -0.10   0.80
  -0.11  1.03 -0.05   0.85
  -0.11 -0.12  1.04   1.40]

A=AB(:,1:end-1);
B=AB(:,end);

n=size(A,1);

P=zeros(n,n);
N=zeros(n,n);

for i=1:n
    P(i,i)=A(i,i);
end
P

N=A-P
xi=[0 0 0]

Xip1=inv(P)*B-inv(P)*N*xi';
Xip1'

Xip1=inv(P)*B-inv(P)*N*Xip1;
Xip1'
Xip1=inv(P)*B-inv(P)*N*Xip1;
Xip1'
Xip1=inv(P)*B-inv(P)*N*Xip1;
Xip1'
Xip1=inv(P)*B-inv(P)*N*Xip1;
Xip1'
