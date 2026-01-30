%% Instituto Tecnológico y de Estudios Superiores de Occidente
%% Cálculo Diferencial
%% Dr. Jorge Alejandro Delgado Aguiñaga
%% Primavera 2026
%% Subtema 1.2 Modelos lineales

clear all
close all
clc

% Datos de la tabla
%year = [1980 1982 1984 1986 1988 1990 1992 1994 1996 1998 2000 2002];
%co2  = [338.7 341.1 344.4 347.2 351.5 354.2 356.4 358.9 362.6 366.6 369.4 372.9];

year = [2010 2012 2014 2016 2018 2020 2022 2024 2026 2028 2030 2032];
co2  = [436.7 444.1 447.4 449.2 452.5 458.2 459.4 462.9 463.6 468.6 470.4 477.9];

%% regresión lineal
X=[ones(12,1) year'];
%X=[1 1980;1 1982;1 1984;1 1986;1 1988;1 1990;1 1992;1 1994;1 1996;1 1998;1 2000;1 2002];
Y=co2';
B=inv(X'*X)*(X'*Y);
b0=B(1,1)
b1=B(2,1)
E=Y-X*B;
ErrorC=E'*E

t=2010:2:2032;

m1=(co2(end)-co2(1))/(year(end)-year(1));

C=m1*t-3327.47;

yreg=b0+b1*t;
% Gráfica
figure
plot(year, co2, 'o-', 'LineWidth', 2, 'MarkerSize', 6), hold on
plot(t,C,'r','LineWidth', 2), hold on
%plot(t,yreg,'k','LineWidth', 2), hold on
grid on
xlabel('Año')
ylabel('Nivel de CO_2 (ppm)')
title('Evolución del CO_2 atmosférico')
saveas(gcf,'1_2_figura_1','epsc')







% % Opcional: ajuste lineal
% p = polyfit(year, co2, 1);
% co2_ajuste = polyval(p, year);
% hold on
% plot(year, co2_ajuste, '--', 'LineWidth', 2)
% legend('Datos reales', 'Modelo lineal', 'Location', 'NorthWest')
