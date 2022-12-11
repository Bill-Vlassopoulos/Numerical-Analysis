function [ri2] = Error_ri2(a1,a0,X,Y)
ri2=sum((Y-(a1*X+a0)).^2);

end