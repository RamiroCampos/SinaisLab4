%% Grupo1.3
syms a t
f = sinh(a*t);
L = laplace(f);     pretty(L);
a = input('Digite valor para a:');
num=[1];    den=[1,0,-(a^2)];   t=0:0.1:10;
y=impulse(num,den,t);
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,y,'b:','LineWidth',2)
xlabel('Tempo em segundos');    ylabel('Resposta');
title(['Resposta ao impulso de x(t) = senh(at)',', a = ',...
    num2str(a)],'Interpreter','latex');
set(gca, 'Color', 'k');
set(gcf, 'Color', 'w');
set(gcf, 'InvertHardcopy', 'off')
saveas(figure1,'Grupo1_3.png')