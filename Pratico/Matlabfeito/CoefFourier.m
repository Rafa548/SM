function [ak,bk] = CoefFourier(Ta,T0,x,k)
    f0 = 1/T0;
    N = length(x);
    t= (0:N-1)*Ta;
    ak = zeros(1,k+1);
    bk = zeros(1,k+1);
    ak(1)=mean(x);
    bk(1)=0;

    for i = 2:k
        ak1=0;
        bk1=0;
        for n = 1:length(x)
            ak1 = ak1 + x(n)*cos(2*pi*(i-1)*f0*t(n));
            bk1 = bk1 + x(n)*sin(2*pi*(i-1)*f0*t(n));
        end
        ak(i) = ak1;
        bk(i) = bk1;
    end
    ak = ak * 2/N;
    bk = bk * 2/N;
end

