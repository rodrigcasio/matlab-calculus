%% Instituto Tecnológico y de Estudios Superiores de Occidente
%% Cálculo Diferencial
%% Dr. Jorge Alejandro Delgado Aguiñaga
%% Primavera 2026
%% Subtema 1.3 Modelos cuadráticos
clear all % se borran todas las variables del espacio de trabajo (workspace)
close all % se cierran todas las figuras
clc % se borran todos los comandos (command window)

%% crear un vector de valores del dominio, eje x.
limI=-3; %límite inferior
limS=3; %límite superior
x=limI:0.1:limS % vector x con valores límite y paso de 0.1.

% funciones cuadráticas
fx1=x.^2+x+1;
fx2=-2*x.^2+3*x+1;

% funciones de orden superior
fx3=x.^3-x +1;
fx4=x.^4-3*x.^2+x;
fx5=3*x.^5-25*x.^3+60*x;



figure
plot(x,fx1,'r','LineWidth', 2), hold on
plot(x,fx2,'k','LineWidth', 2), hold on
grid on
xlabel('Año')
ylabel('Nivel de CO_2 (ppm)')
title('Evolución del CO_2 atmosférico')
saveas(gcf,'1_3_figura_1','epsc')

figure
plot(x,fx3,'r','LineWidth', 2), hold on
plot(x,fx4,'k','LineWidth', 2), hold on
plot(x,fx5,'k','LineWidth', 2), hold on
grid on
xlabel('Año')
ylabel('Nivel de CO_2 (ppm)')
title('Evolución del CO_2 atmosférico')
saveas(gcf,'1_3_figura_1_b','epsc')