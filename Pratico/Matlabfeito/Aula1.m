
%1
 x = [1, 2, 3, 4, 5, 6, 7, 8, 9 , 10];
 imp_1 = x(1:2:10);
 imp_2 = 1:2:10;
%%
%2
 seq_1 = -5:1:5;
 seq_2 = linspace(-5,5,11); % -5 até 5 - 11 valores
%%
%3
 A  = [1, 5, 1-1j; 4, 1j, -1];

%4 
 A(3,:) = [1 2 3];
 A(:,4) = [3 2 1];

%5
 A(:,1:2:end) = []; % final tambem conta

%%
%6
 x = linspace(-2*pi,0,200);
 y = sin(x).*exp(x);
 plot(x,y,'r:')
 axis([-8 0 -0.5 0.8])
 legend('sin x');
 xlabel('eixo x');
 ylabel('eixo y');

 %7
 x = linspace(0,2*pi,200);
 f = sin(4*x).*exp(1j*x);  %%funcoes complexas nao se mete abcissa
 subplot(1,2,1);
 plot(f,'g');
 legend('sin 4x');
 xlabel('eixo x');
 ylabel('eixo y');
 g = sin(8*x).*exp(1j*x);
 subplot(1,2,2);
 plot(g,'r');
 legend('sin 8x');
 xlabel('eixo x');
 ylabel('eixo y');

%%
%7

x = linspace(-1,1,51);
y = linspace(-1,1,51);
[XX,YY] = meshgrid(x,y);

f= cos(4*pi.*(XX+YY)).*exp(-(abs(XX+YY)));

surf(x,y,f)
shading interp

%%
%8
x = linspace(0,2*pi);
y = sin(x);
f1 = Taylor(2,x);
f2 = Taylor(10,x);
% subplot(1,3,1);
% plot(x,y)
% subplot(1,3,2);
% plot(x,f1) 
% subplot(1,3,3);
% plot(x,f2)

plot(x,y,'r',x,f1,'b',x,f2,'k') %tudo em um
