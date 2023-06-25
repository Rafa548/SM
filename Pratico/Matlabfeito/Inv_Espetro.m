function [x,t] = Inv_Espetro(X,f)
    N=length(X);
    x = ifft(ifftshift(X)*N); 
    Fa = max(f)*2;
    Ta = 1/Fa;
    t = (0:N-1)*Ta;
end

