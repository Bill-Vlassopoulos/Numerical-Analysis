function [I_f] = Simpson(f,a,b,N)
I_f=f(a)+f(b);
h=(b-a)/N;
for i=2:1:N
    if mod(i,2)==0
        I_f=I_f+4*f(a+(i-1)*h);
    else
        I_f=I_f+2*f(a+(i-1)*h);
    end
end
I_f=I_f*h/3
end