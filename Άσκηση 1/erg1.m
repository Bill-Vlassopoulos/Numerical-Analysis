close all;
clear all;
clc;

syms w;
R=1000;
L=8*(10^(-3));
C=8*(10^(-6));

RV = (w*R*C)/sqrt((1-(w^2)*L*C)^2 + (w*R*C)^2);
RV=matlabFunction(RV);

w=linspace(1,10^9,10^5);
 
plot(w,RV(w));
fun=@(w) RV-0.87;
load("N_R.m")
N_R(fun,0)
