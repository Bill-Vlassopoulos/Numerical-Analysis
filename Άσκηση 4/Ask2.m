close all;
clear all;
clc

v=@(t) 3500*sin(140*pi*t)*exp(-63*pi*t);
f=@(t) ((3500*sin(140*pi*t)*exp(-63*pi*t))^2)/50;
a=0;
b=0.02;
N=50;

Simpson(f,a,b,N);