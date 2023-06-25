function [X,f] = Espetro(x,Ta)
    N = length(x);
    Fa = 1/Ta;
    f = (0:N-1)*(Fa/N)-(Fa/2);
    X = fftshift(fft(x))/N;
end

