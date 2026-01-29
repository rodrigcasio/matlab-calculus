
% finding the Domain of f(w) = (w + 2) ./ (3 - (6 ./ (w - 4)));

w = linspace(2, 8, 1000); % -- define w to avoid exact values of 4 and 6 to prevent errors

f = (w + 2) ./ (3 - (6 ./ (w - 4))); % -- define the function f

plot(w, f, 'LineWidth', 2)
grid on 
xlim([-20 20]) % - limit the y axis so the infinity parts do not wash out the graph
xlabel('w')
ylabel('f(w)')
title('Graph with gaps at w = 4, w = 6')



