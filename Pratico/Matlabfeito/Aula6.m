
%a)
Ta = 0.2;
t=0:Ta:5-Ta;
x=sin(2*pi*t);

Reconstroi_sinal_c_plot(x,Ta);

%%
%b
Ta = 0.04;
t=0:Ta:5-Ta;
y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);
Reconstroi_sinal_c_plot(y,Ta);


%%
%  II
% 1
A=1;
Vfs = 2*A;  %distancia entre o minimo e o maximo do grafico num dado periodo
nb_1 = 2;   %n_bits
delta_1 = Vfs/2^nb_1;   %calculo do delta

nb_2 = 3;
delta_2 = Vfs/2^nb_2;

nb_3 = 4;
delta_3 = Vfs/2^nb_3;

partition = -1+delta_1:delta_1:1-delta_1;   %pensar no grafico --> as divisoes
codebook = -1+delta_1/2:delta_1:1;  %valores médios das divisoes;

Ta = 0.01;
t=0:Ta:5-Ta;
x=sin(2*pi*t);
[index,quants] = quantiz(x,partition,codebook);
plot(t,x,t,quants);
