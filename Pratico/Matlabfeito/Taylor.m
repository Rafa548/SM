function [res] = Taylor(N,x)
%TAYLOR Summary of this function goes here
%   Detailed explanation goes here
res = 0;
    for h = 1:N
        res = res + (x.^h/factorial(h))*sin(h*pi/2);
    end
end

