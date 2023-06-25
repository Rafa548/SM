function [x,t] = ReconstroiSinal_4(X,f)
    N = length(X);
    fa = max(f)*2;
    Ta = 1/fa;
    t = (0:N-1) * Ta;       % OU 0:Ta:length(X)*Ta -Ta;
    x = ifft(ifftshift(X))*N;
end