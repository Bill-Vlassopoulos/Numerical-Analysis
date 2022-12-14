function [fi_derivative] = central_difference(f_i_plus1,f_i_minus1,h)
    fi_derivative=(f_i_plus1-f_i_minus1)/(2*h);
end