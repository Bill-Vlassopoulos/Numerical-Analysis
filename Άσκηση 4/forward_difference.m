function [dfi] = forward_difference(fi,fi_plus1,fi_plus2,h)
    dfi=(-3*fi+4*fi_plus1-fi_plus2)/(2*h);
end