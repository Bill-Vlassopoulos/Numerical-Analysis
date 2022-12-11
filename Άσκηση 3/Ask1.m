clc
clear all;
close  all;

T=[50,100,150,200,400,600,800,1000];
k=[28,9.1,4.0,2.7,1.1,0.6,0.4,0.3];

figure(1)
plot(T,k,"bo",LineWidth=3)

%% y = b*x^m
[a1,a0]=LinearRegression(log(T),log(k));

m_1=a1;
b_1=exp(a0);
figure(2)
plot(T,k,"bo",T,b_1*T.^m_1,"-r",LineWidth=2)
title("y = b*x^m")
Error_ri2(a1,a0,log(T),log(k))

%% y = b*exp(m*x)
[a1,a0]=LinearRegression(T,log(k));

% m_2=a1;
% b_2=exp(a0);
% figure(3)
% plot(T,k,"bo",T,b_2*exp(T.*m_2),"-r",LineWidth=2)
% title("y = b*exp(m*x)")
Error_ri2(a1,a0,T,log(k))
%% y = b*10^(m*x)
[a1,a0]=LinearRegression(T,log(k));

% m_3=a1;
% b_3=exp(a0);
% figure(4)
% plot(T,k,"bo",T,b_3*10.^(T.*m_3),"-r",LineWidth=2)
% title("y = b*10^(^m^*^x^)")
Error_ri2(a1,a0,T,log(k))

%% y = 1/(mx+b)
[a1,a0]=LinearRegression(T,1./k);

% m_4=a1;
% b_4=a0;
% figure(5)
% plot(T,k,"bo",T,1./(b_4+m_4*T),"-r",LineWidth=2)
% title("y = 1/(mx+b)")
Error_ri2(a1,a0,T,1./k)

%% y = mx/(b+x)
[a1,a0]=LinearRegression(1./T,1./k);

% m_5=1/a0;
% b_5=m_5*a1;
% figure(6)
% plot(T,k,"bo",T,m_5*T./(b_5+T),"-r",LineWidth=2)
% title("y = mx/(b+x)")
Error_ri2(a1,a0,1./T,1./k)
