function [y_t_f,t_f] = tempo_frequencia(T_f,Ta,F0,Np,Vamp,Vfreq,Vfas)
    if T_f == 1
        N = length(Vamp);
        t = 0:Ta:Np*(1/F0);
        x = 0;
        for i = 1:N
            x = x + Vamp(i)*sin(2*pi*Vfreq(i)*t+Vfas(i));
        end
        y_t_f = x;
        t_f = t;
    elseif T_f == 2
        N = length(Vamp);
        t = 0:Ta:Np*(1/F0);
        x = 0;
        for i = 1:N
            x = x + Vamp(i)*sin(2*pi*Vfreq(i)*t+Vfas(i));
        end
        N_2 = length(x);
        Fa = 1/Ta;
        t_f = (0:N_2-1)*(Fa/N_2)-(Fa/2);
        y_t_f = fftshift(fft(x))/N_2;
    else
        disp("T_F deverá ter valores de 1 ou 2")
        y_t_f=0;
        t_f=0;
    end
end

