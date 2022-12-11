function [a1,a0] = LinearRegression(X,Y)
Sx=sum(X);
Sy=sum(Y);
Sxy=sum(X.*Y);
Sxx=sum(X.*X);
n=length(Y);
a1 = (n*Sxy-Sx*Sy)/(n*Sxx-Sx^2);
a0 = (Sxx*Sy-Sxy*Sx)/(n*Sxx-Sx^2);
end