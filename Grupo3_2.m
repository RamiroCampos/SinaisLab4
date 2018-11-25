%% Grupo3.2
syms t  a 
f = t*exp(-a*t)
L = laplace(f);     pretty(L);
a=input('Digite valor para a :');
num=[1];    den=[1,2*a,a^2];    t=0:0.1:10;
y=impulse(num,den,t);
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,y,'b-.')
xlabel('Tempo em segundos');    ylabel('Resposta');
title(['Resposta ao impulso de x(t) = te$^{-at}$',', a = ',...
    num2str(a)],'Interpreter','latex');
set(gca, 'Color', 'k');
set(gcf, 'Color', 'w');
set(gcf, 'InvertHardcopy', 'off')
saveas(figure1,'Grupo3_2.png')