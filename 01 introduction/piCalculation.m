clc
clear all
close all;

M=1000;
for M=1:1000
    for n=1:M
        L(n)=((-1)^(n-1) )/(2*(n-1)+1);
    end

    Lsum=sum(L);
    piL(M)=Lsum*4;


    for k=1:M
        E(k)=1/(k^2);
    end
    Esum=sum(E);
    piE(M)=sqrt(Esum*6);
end



absErrorL=abs(piL-pi);
relativeErrorsL=abs(absErrorL./pi);


absErrorE=abs(piE-pi);
relativeErrorsE=abs(absErrorE./pi);
figure()
plot(absErrorL)
hold on
plot(absErrorE)

figure()
plot(relativeErrorsL)
hold on
plot(relativeErrorsE)
