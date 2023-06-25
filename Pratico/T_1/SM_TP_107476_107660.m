

%%
%tempo 


Vamp=[20,16,10];
Vfreq=[3/2,7/2,9/2];
Vfas=[-2*pi/3,2*pi/3,pi/4];

Ta=0.001;
f0 = 1/2;
T_F=1;
Np=1;

[X,f]=tempo_frequencia(T_F,Ta,f0,Np,Vamp,Vfreq,Vfas);
plot(f,X);
grid on
xlabel("tempo");
ylabel("y(t)");

%1b potencia
potencia(X,Ta,1/f0)

%%
%frequencia

Vamp=[20,16,10];
Vfreq=[3/2,7/2,9/2];
Vfas=[-2*pi/3,2*pi/3,pi/4];

Ta=0.001;
f0 = 1/2;
T_F=2;
Np=1;

[X,f]=tempo_frequencia(T_F,Ta,f0,Np,Vamp,Vfreq,Vfas);
plot(f,abs(X));
grid on
xlabel("f(Hz)");
ylabel("Amplitude");
axis([-50,50,0,11])

