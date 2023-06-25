
%3a -2
Ta = 0.01;
T = 2;
N_p = 1;
n_pontos = round(T/Ta)*N_p;
t = (0:n_pontos-1)*Ta;
x = 20*sin(3*pi*t-2*pi/3)+16*sin(7*pi*t+2*pi/3)+10*sin(9*pi*t+pi/4);

[X,f] = Espetro(x,Ta);
plot(f,abs(X));

%
%%
%3a -100
Ta = 0.01;
T = 1;
N_p = 2;
n_pontos = round(T/Ta)*N_p;
t = (0:n_pontos-1)*Ta;
x = sin(2*pi*t);

[X,f] = Espetro(x,Ta);
plot(f,abs(X));

%%
%3b

Ta = 0.01;
T = 1;
N_p = 50;
n_pontos = round(T/Ta)*N_p;
t = (0:n_pontos-1)*Ta;
x = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);

[X,f] = Espetro(x,Ta);
plot(f,abs(X));

%%
%3c

Ta = 0.001;
T = 1/10;
N_p = 100;
n_pontos = round(T/Ta)*N_p;
t = (0:n_pontos-1)*Ta;
x = 10 + 14*cos(20*pi*t-pi/3) + 8*cos(40*pi*t+pi/2);

[X,f] = Espetro(x,Ta);
plot(f,abs(X));

%%
%d

f0 = 1;
Ta = 0.01;
T=1;
Np=5;
N = round(Np/(f0*Ta));
t3 = (0:N-1) * Ta;
x = square(2*pi*t3);

[X,f] = Espetro(x,Ta);
plot(f,abs(X));

%%
%e
f0 = 1;
Ta = 0.01;
T=1;
Np=5;
N = round(Np/(f0*Ta));
t3 = (0:N-1) * Ta;
y = sawtooth(2*pi*f0*t3);

[X,f] = Espetro(y,Ta);
plot(f,abs(X));

%%
%4

Ta = 0.001;
T = 1;
N_p = 2;
n_pontos = round(T/Ta)*N_p;
t = (0:n_pontos-1)*Ta;
x = sin(2*pi*t);

[X,f] = Espetro(x,Ta);
plot(f,abs(X));

[x_2,t] = Inv_Espetro(X,f);
plot(t,x_2),


