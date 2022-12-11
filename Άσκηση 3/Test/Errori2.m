function [error] = Errori2(X,Y,a1,a0)

error=sum((Y-a1*X-a0).^2);
end