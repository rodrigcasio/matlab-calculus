%% Instituto Tecnológico y de Estudios Superiores de Occidente
%% Cálculo Diferencial
%% Dr. Jorge Alejandro Delgado Aguiñaga
%% Primavera 2026
%% Subtema 1.2 Modelos lineales

clear all
close all
clc

clear all
close all
clc

% Datos de la tabla
tiempo = [0 1 2 3 4 5 6 7 8 9];
altura = [450 445 431 408 375 332 279 216 143 61];

t = tiempo';   % variable independiente (tiempo)
h = altura';   % variable dependiente (altura)

%% Regresión cuadrática: h(t) = b0 + b1 t + b2 t^2

X = [ones(length(t),1), t, t.^2];
Y = h;

B = inv(X'*X)*(X'*Y);

b0 = B(1)
b1 = B(2)
b2 = B(3)

% Error cuadrático total (ESS)
E   = Y - X*B;
ESS = E'*E

t=0:0.01:10;
ht=b0+b1*t+b2*t.^2;

h0=max(roots([b2 b1 b0]))
% Gráfica
figure
%plot(t, ht, 'o-', 'LineWidth', 2, 'MarkerSize', 6), hold on
plot(t,ht,'r','LineWidth', 2), hold on
%plot(t,yreg,'k','LineWidth', 2), hold on
grid on
xlabel('tiempo')
ylabel('altura')
title('Caída de una pelota')
saveas(gcf,'1_2_figura_3','epsc')
