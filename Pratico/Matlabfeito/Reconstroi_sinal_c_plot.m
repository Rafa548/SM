function [] = Reconstroi_sinal_c_plot(x,Ta)
    fa = 1/Ta;
    fs = fa*100;
    N=length(x);
    t = (0:(N*100)-1)*1/fs;
    res = 0;
    for n = 1:length(x)
        res = res + x(n)*sinc(fa*(t-(n-1)*Ta));
    end
    plot(t,res);
end

