clear
load("Guitar02.mat");
x_new = x(1:500);

AMP = (abs(max(x_new)) + abs(min(x_new))); % Amp = amplitude total (minima+maxima)
N = length(x_new);
t=(0:N-1)*Ta;         

n = 4;    % nº de bits
delta = AMP/(2^n);
codebook=-abs(min(x_new)) + delta/2:delta:abs(max(x_new)) - delta/2;
partition=-abs(min(x_new)) + delta:delta:abs(max(x_new)) - delta;
[indx,quantz]=quantiz(x_new,partition,codebook); 

figure(5)
hold on
yline(partition)        % níveis desenhados (linhas no y)
plot(t,quantz,'r');     % sinal quantizado 
plot(t,x_new,'b');
legend("quantizado","original");
title("Quantização do sinal");
xlabel("Tempo (segundos)")
ylabel("Amplitude")
hold off

figure(6)
title("Comparação do sinal original e reconstruído");
subplot(1,2,1);
plot(t,x_new,'b');     % sinal original
xlabel("Tempo (segundos)")
ylabel("Amplitude")
legend("Sinal Original")
[t2,y] = ReconstroiSinal_5(x_new,Ta);
subplot(1,2,2);
plot(t2,y,'r');        % sinal reconstruído dps de quantitizado
xlabel("Tempo (segundos)")
ylabel("Amplitude")
legend("Sinal Reconstruído")
