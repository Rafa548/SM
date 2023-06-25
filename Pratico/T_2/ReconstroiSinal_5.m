function [t,y] = ReconstroiSinal_5(x,Ta)
fa = 1/Ta;
N = length(x);
fs = 100*fa;
y = zeros(100*N,1);
t = [0:(length(y)-1)]'*(1/fs);

for n=1:N
   y = y + x(n)*sinc(fa*(t-(n-1)*Ta));      % n-1 porque o somatório começa no 0
end


end

