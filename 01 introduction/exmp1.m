clear all; clc;
%% example 1
format long

% exact value
exactValue=4.357065414203214;

x=0.5;

f=@(x) 5*x^(3*x^x);

h=1;
I1=(f(x+h)-f(x))/h;
[I1;exactValue]
h=0.1;
I2=(f(x+h)-f(x))/h;
[I2;exactValue]

h=0.000001;
I3=(f(x+h)-f(x))/h;
[I3;exactValue]






%% example 2
I = zeros(1,100); % przygotowanie wektora do przechowania wyników
i = 1; % zmienna steruj ˛ aca do p˛etli (while)
x = 0.5; % punkt dla którego liczymy warto´sci ilorazu ró˙znicowego
f = @(x) 5*x^(3*x^x); % tzw. ’handle’ do funkcji
h = 1; % pocz ˛ atkowa warto´s´c h
while 1 % p˛etla niesko´nczona
    I(i) = (f(x+h)-f(x))/(h); % obliczenie iloczynu
    I2(i) = (f(x+h)-f(x-h))/(2*h);
    if i >1
        if abs(I(i)-I(i-1))<0.0005 || i==100
            break
        end
    end
    h = h/2;
    i = i + 1;
end
I(i+1:end) = []; % usuni˛ecie niezapisanej cz˛e´sci wektora
figure(1)
hold on
plot(1:i,I,'.-');
xlabel('iteration number ')
ylabel('I')























%%
absError=abs(I-exactValue);
relativeErrors=abs(absError./exactValue);

absError2=abs(I2-exactValue);
relativeErrors2=abs(absError2./exactValue);


figure(2)
hold on
plot(1:i,absError,'.-');
plot(1:i,absError2,'.-');
xlabel('iteration number ')
ylabel('I')
figure(3)
hold on
plot(1:i,relativeErrors,'.-');
plot(1:i,relativeErrors2,'.-');
xlabel('iteration number ')
ylabel('I')