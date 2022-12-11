function [a1,a0] = LinearRegression(X,Y)
n=length(X);
Sx=sum(X);
Sxx=sum(X.*X);
Sxy=sum(X.*Y);
Sy=sum(Y);
a1=(n*Sxy-Sx*Sy)/(n*Sxx-(Sx^2));
a0=(Sxx*Sy-Sxy*Sx)/(n*Sxx-(Sx^2));
end