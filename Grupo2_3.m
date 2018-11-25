%% Grupo2.3
syms t  a w
f = exp(-a*t)*sin(w*t)
L = laplace(f);     pretty(L);
a=input('Digite valor para a :');
w=input('Digite valor para w :');
num=[w];    den=[1,2*a,(a^2 + w^2)];    t=0:0.1:10;
y=impulse(num,den,t);
figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'all');
plot(t,y,'b-.')
xlabel('Tempo em segundos');    ylabel('Resposta');
title(['Resposta ao impulso de x(t) = e$^{-at}$ sin(wt)',', a = ',...
    num2str(a),', w = ',num2str(w)],'Interpreter','latex');
set(gca, 'Color', 'k');
set(gcf, 'Color', 'w');
set(gcf, 'InvertHardcopy', 'off')
saveas(figure1,'Grupo2_3.png')