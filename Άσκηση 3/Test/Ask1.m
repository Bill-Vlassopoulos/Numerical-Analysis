clc
close all;
clear all;

T=[50,100,150,200,400,600,800,1000];
k=[28,9.1,4.0,2.7,1.1,0.6,0.4,0.3];

[a1,a0]=LinearRegression(log(T),log(k));
disp("y=bx^m: "+Errori2(log(T),log(k),a1,a0))

[a1,a0]=LinearRegression(T,log(k));
disp("y=be^(mx): "+Errori2(T,log(k),a1,a0))

[a1,a0]=LinearRegression(T,log10(k));
disp("y=b10^(mx): "+Errori2(T,log10(k),a1,a0))

[a1,a0]=LinearRegression(T,1./k);
disp("y=1/(mx+b): "+Errori2(T,1./k,a1,a0))

[a1,a0]=LinearRegression(1./T,1./k);
disp("y=mx/(x+b): "+Errori2(1./T,1./k,a1,a0))

[a1,a0]=LinearRegression(log(T),log(k));
m=a1;
b=exp(a0);
plot(T,k,"bo",T,b*T.^m,"-r",LineWidth=2)