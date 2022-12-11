clc
clear all;
close all;

T=[20,100,180,260,340];
R=[500,676,870,1060,1205];

n=length(T);
f=0;
for i=1:n
    f=f+Langrange(T,i,150)*R(i);
end

f