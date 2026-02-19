% 2.2 Calculo de limit
% 

% 21. 
% x = 0.5:0.001:1.5;
% y = (sqrt(x + 4) - 2) ./ x;
% plot(x, y);
% grid on


% 22.
% Small interval around 0
% x = -0.2:0.0001:0.2;
% 
% % Remove x = 0 to avoid 0/0
% x(x == 0) = [];
% 
% % Function
% y = tan(3*x) ./ tan(5*x);
% 
% % Plot the function
% plot(x, y, 'LineWidth', 2)
% hold on; grid on;
% 
% % Plot the limit point (the hole)
% plot(0, 3/5, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r')
% 
% % Labels
% xlabel('x')
% ylabel('tan(3x) / tan(5x)')
% title('Graph of tan(3x)/tan(5x) near x = 0 with limit point')




% 23.
% x = 0.5:0.001:1.5;
% y = (x.^6 - 1) ./ (x.^10 - 1);
% plot(x, y)
% grid on

% 24.
% Small interval around zero
% x = -0.2:0.0001:0.2;
% 
% % Remove x = 0 to avoid 0/0
% x(x == 0) = [];
% 
% % Define the function
% y = (9.^x - 5.^x) ./ x;
% 
% % Plot the function
% plot(x, y, 'LineWidth', 2)
% hold on; grid on;
% 
% % Limit value at x = 0
% L = log(9/5);
% plot(0, L, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r')
% 
% % Labels
% xlabel('x')
% ylabel('(9^x - 5^x) / x')
% title('Graph of (9^x - 5^x) / x near x = 0')


% 27.
% x = -5:0.01:10;
% y = (2 - x) ./ (x - 1).^2;
% plot(x, y, 'LineWidth', 2);
% grid on 
% xlabel('x');
% ylabel('(2 - x) / (x - 1)^2');
% title('27.')

% ----- Practice with different equations -----
% Function: (x^2 - 5x + 6) / (x - 3)
% Domain (remove x = 3 so the graph breaks)
x = 1:0.0001:5;
x = x(x ~= 3);

y = (x.^2 - 5*x + 6) ./ (x - 3);

% Plot the function
plot(x, y, 'LineWidth', 2)
hold on
grid on

% Hole location (limit value)
hole_x = 3;
hole_y = hole_x - 2;   % because simplified function is y = x - 2

% Plot the open circle
plot(hole_x, hole_y, 'ro', ...
    'MarkerSize', 10, ...
    'LineWidth', 2, ...
    'MarkerFaceColor', 'w')   % white center = open circle

% Zoom in to see the hole clearly
xlim([2.9 3.1])
ylim([0.8 1.2])

title('Graph of (x^2 -5x + 6)/(x - 3) with Hole at x = 3')
xlabel('x')
ylabel('(x^2 - 5x + 6)/(x - 3)')





