function [v] = speed(dr,du,r)
v=sqrt(dr^2 +(r*du)^2);
end