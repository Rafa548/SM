function [NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits)
    N = length(f);
    indices = randsample(N,CompMesg,true,f);
    NumBits = sum(nBits(indices));
    NumBPS=NumBits/CompMesg;
end

