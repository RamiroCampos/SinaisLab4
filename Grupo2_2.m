%% Grupo2.2
syms t w 
f = cos(w*t)
L = laplace(f);     pretty(L);
w=input('Digite valor para w :');
num=[1,0];  den=[1,0,w^2];  t=0:0.1:10;
y=impulse(num,den,t);
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,y,'b-.')
xlabel('Tempo em segundos');    ylabel('Resposta');
title(['Resposta ao impulso de x(t) = cos(wt)',', w = ',...
    num2str(w)],'Interpreter','latex');
set(gca, 'Color', 'k');
set(gcf, 'Color', 'w');
set(gcf, 'InvertHardcopy', 'off')
saveas(figure1,'Grupo2_2.png')