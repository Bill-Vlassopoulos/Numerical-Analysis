function [Li] = Langrange(X,i,Xint)

n=length(X);
Li=1;
for j=1:n
    if i==j
        continue;
    else
        Li=Li*(Xint-X(j))/(X(i)-X(j));
    end
    
end