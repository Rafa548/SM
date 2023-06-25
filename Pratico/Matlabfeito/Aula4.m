
%%
%1
%2
ak = [0,0,0,0,0,0,0,0,0,0];
bk = [0 4/pi 0 4/(3*pi) 0 4/(5*pi) 0 4/(7*pi) 0 4/(9*pi)];

Ta = 0.001;
f0 = 1;
Np=2;
t1=0:0.01:2;

[x,t]= SerieF(Ta,f0,Np,ak,bk);
y  = square(2*pi*1*t1);
plot(t1,y,"b");
hold on
plot(t,x);



%3
[ak1,bk1]= CoefFourier(Ta,1/f0,x,8);

%%
%4
f0 = 1;
Ta = 0.001;
T=4;
Np=4;
N = round(Np/(f0*Ta));
t3 = (0:N-1) * Ta;
%y = sawtooth(2*pi*f0*t3*pi/2,1/2);
[r1,r2] = CoefFourier(Ta,1/f0,t3,T);
[x,t2] = SerieF(Ta,f0,Np,r1,r2);

plot(t2,x)


