%3
figure(3)
fa = 1/Ta;
fa_new = fa/2;
%sound(x,fa_new);
N = length(x);
Ta_new = 1/fa_new;
t = (0:N-1)*Ta_new;
plot(t,x)
xlabel("Tempo (segundos)")
ylabel("Amplitude")
fprintf("Número de segundos da música: %f\n",t(end));
title("1-Sinal")

figure(4);
[X,f] = Espetro(x,Ta_new);      % espetro
plot(f,abs(X));
xlim([-5e3 5e3]);
grid on;
title("2-Espetro");
ylabel("Magnitude");
xlabel("Frequency (Hz)");