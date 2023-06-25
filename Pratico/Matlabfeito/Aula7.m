%1
load Guitar03.mat
sound(x,fa)

%%
%2
load Guitar03.mat
Ta= 1/fa;
[X,f]=Espetro(x,Ta);
figure(1)
plot(f,abs(X));

%3)
Hf = zeros(1,length(X));
Hf(f>100 & f<400)=1;
Hf(f>-400 & f<-100)=1;
figure(2)
plot(f,Hf)
xlim([-2000 2000])
figure(3)
Xf=Hf.*X.';
plot(f,abs(Xf))
xlim([-1000 1000])

[sm,d] = GeraSinal(10000,0.001);
plot(d,sm)
