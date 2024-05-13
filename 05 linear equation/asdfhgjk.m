clc
clear all
AB=[
   
   2.10  1.00  0.90  0.80  0.70    1.30
   4.20  2.00  3.00  2.50  2.40    5.10
   4.00  2.00 10.00  3.50  8.00    4.30
   1.00  1.00  1.00  2.00  1.00    9.10
   2.00  2.00  2.00  3.00  5.00    2.20]

A=AB(:,1:end-1);
B=AB(:,end);
n=5;

for j=1:n
    % AB
    tmpCol=AB(:,j);
    tmpCol(1:j)=0;
    [val i]=max(abs(tmpCol));
    tmpRow=AB(j,:);
    AB(j,:)=AB(i,:);
    AB(i,:)=tmpRow;
     for i=j+1:n
        AB(i,:)=AB(i,:)-AB(j,:)/AB(j,j)*AB(i,j)
    end
end



xx=zeros(n,1)

for i=n:-1:1
    sumNoI=0;
    for j=1:n
        if i~=j
            sumNoI=sumNoI+xx(j)*AB(i,j);
        end
    end
    xx(i)=(AB(i,5)-sumNoI )/AB(i,i)
    % x4=(AB(4,5)-AB(4,4)*XX(4)-AB(4,3)*XX(3)-AB(4,2)*XX(2))/AB(4,4)
end
A\B
xx
A\B