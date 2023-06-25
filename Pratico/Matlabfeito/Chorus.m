function y = Chorus(x,fs,MaxDelay,NumComp)
    N=length(x);
    y= zeros(N,1);
    for n=1:NumComp
        curDelay=rand(1,1)*MaxDelay;
        dn = max([1 round(curDelay*fs)]);
        y(dn : end) = y(dn : end) + x(1 : end-dn+1);
    end
    Px = x'*x/N;
    Py = y'*y/N;
    y = y*sqrt(Px/Py);
end

