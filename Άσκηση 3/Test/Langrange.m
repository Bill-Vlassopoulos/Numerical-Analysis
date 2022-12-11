function [Li] = Langrange(X,i,Xint)
Li=1;
n=length(X);
for j=1:1:n
    if i==j
        continue
    else
     Li=Li*(Xint-X(j))/(X(i)-X(j));
    end
end