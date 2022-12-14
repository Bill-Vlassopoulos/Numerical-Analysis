function [dfi] = backward_difference(fi,fi_minus1,fi_minus2,h)
    dfi=(fi_minus2-4*fi_minus1+3*fi)/(2*h);
end