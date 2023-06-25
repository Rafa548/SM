load Guitar03.mat

MaxDelay = 0.3;
Numcomp = 15;
y = Chorus(x,fa,MaxDelay,Numcomp);
sound(y,fa)
Ta = 1/fa;
[Y,fy] = Espetro(y,Ta);
plot(fy,abs(Y));