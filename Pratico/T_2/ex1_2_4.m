load("Guitar02.mat");       % valores de Ta; x

% 1)

%sound(x,fa);              
N = length(x);
t = (0:N-1)*Ta;
figure(1);
plot(t,x);
xlabel("Tempo (segundos)");
ylabel("Amplitude");
fprintf("1) Segundos da música: %f\n",t(end));
title("1-Sinal");

% 2)

figure(2);
[X,f] = Espetro(x,Ta);      % espetro
plot(f,abs(X));
xlim([-5e3 5e3]);

grid on;
title("2-Espetro");
ylabel("Magnitude");
xlabel("Frequency (Hz)");


% 4)

figure(4);
fa = 1/Ta;
fltr = zeros(1,length(f));
fltr((round(abs(f))==868 | round(abs(f))==1300)) = 1;    %errado
subplot(1,2,1);
plot(f,fltr);
xlabel("Frequência(Hz)");
ylabel("Magnitude");
title("filtro");
fltr = find(fltr==1);

x_fltr = zeros(1,length(X));
x_fltr(fltr) = X(fltr);

[x,t] = ReconstroiSinal_4(x_fltr,f);

sound(real(x),fa);

ind = 1:500;
subplot(1,2,2);
hold on
plot(t(ind),x(1:500));
plot(t(ind),x(1:500),'.r');
xlabel("tempo(segundos)");
ylabel("Amplitude");
hold off
