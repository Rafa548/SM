%1-

%a
% PERIODO = 1/FREQUENCIA -- FREQUENCIA = NESTE CASO 4PI/2PI
t = 0:0.01:4*0.5; % 4 periodos
y=2*sin(4*pi*t);
plot(t,y,"g--")

%b

t=0:0.01:4*0.2;
x=sin(10*pi*t+pi/2);
plot(t,x,"g--")

%c
t=0:0.01:4*0.1;
z=sin(20*pi*t+70*pi/180)+sin(20*pi*t+200*pi/180);
plot(t,z,"g--")

%d
t=0:0.01:4*1;
f=sin(6*pi*t)+sin(8*pi*t);
plot(t,f,"g--")

%e
t=0:0.01:4*1;
l=sin(6*pi*t)+sin(8*pi*t+0.1);
plot(t,l,"g--")

%f
t=0:0.01:4*2;
k=sin(6*pi*t)+sin(7*pi*t)+sin(8*pi*t);
plot(t,k,"g--")


%3-
Potencia(y,0.01,0.5)    %vetor de amostras y -- periodo de amostragem 0.01 -- periodo do sinal 0.5  

%4
t=0:0.001:4*0.1;
teta = rand(1,3)*2*pi-pi;
b = sin(2*pi*10*t+teta(1))+sin(2*pi*20*t+teta(2))+sin(2*pi*30*t+teta(3));
plot(t,b)
