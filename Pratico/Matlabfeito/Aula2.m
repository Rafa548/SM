%a)

T_1 = 0:0.01:5;
x = 2*sin((4*pi)*T_1);
%plot(T_1,x);

%b)

y = cos(10*pi*T_1);
%plot(T_1,y);

%c)
z = x.*y;
%plot(T_1,z);

%d)
T_2 = 0:0.01:10;
w = 3 * sin(pi*T_2) + 2 * sin(6*pi*T_2);
%plot(T_2,w);

%e)
T_3=0:0.01:5;
T_4=0:0.01:5;
q = 2 * sin(2*pi*((2*T_3)+T_4));
%plot(q);

%2 ao aumentar o periodo de amostragem diminui-se a amplitude dos graficos

%3 
plot(T_1,x,"-r",'LineWidth',0.5);
hold on;
plot(T_1,y,"b--",'LineWidth',2);
plot(T_1,z,"g-",'LineWidth',0.5);
plot(T_2,w,"y-",'LineWidth',2);
hold off;


%4-drawnow
t = 0:0.04:5;
x1 = -5:0.1:5;
x2 = -5:0.1:5;


for k = 1:length(t)
    [X1,X2] = meshgrid(x1,x2);
    r = 2*sin(2*pi*sqrt(X1.^2+X2.^2)-2*pi*t(k));
    pcolor(x1,x2,r)
    shading interp
    drawnow()
end

