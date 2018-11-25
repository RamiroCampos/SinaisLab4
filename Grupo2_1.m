%% Grupo2.1
syms t n 
f = t^(n-1)
L = laplace(f);     pretty(L);
n=input('Digite um numero natural maior ou igual a 1:');
num=[1];    den=zeros(1,n+1);   t=0:0.1:10;
y=impulse(num,den,t);
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,y,'b-.')
xlabel('Tempo em segundos');    ylabel('Resposta');
title(['Resposta ao impulso de x(t) = $$t^{n-1}$$',', n = ',...
    num2str(n)],'Interpreter','latex');
set(gca, 'Color', 'k');
set(gcf, 'Color', 'w');
set(gcf, 'InvertHardcopy', 'off')
saveas(figure1,'Grupo2_1.png')