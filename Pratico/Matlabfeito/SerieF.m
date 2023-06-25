function [res,t] = SerieF(Ta,f0,Np,ak,bk)
    T = 1/f0;
    N = round(T/Ta * Np);
    t = (0:N-1) * Ta;
    res = zeros(1,N);
    for i = 1:length(ak)
        res = res + ak(i)*cos((i-1)*2*pi*f0*t) + bk(i)*sin(2*pi*(i-1)*f0*t);
    end 
end

