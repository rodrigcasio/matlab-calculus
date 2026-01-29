
% First exercise pract for finding the domain

% define the range of x values 
% we go a bit off the domain to see the graph desappear.
x = linspace(5, 12, 1000); % start exactly at 5 and 12 

% 2. define the function:
y = sqrt(x - 5) + sqrt(12 - x);

% 3. Create the plot:
plot(x, y, 'LineWidth', 2, 'Color', [0 0.5 0.5])
grid on
xlabel('x-axis')
ylabel('h(x)')
title('Graph of h(x) = sqrt(x - 5) + sqrt(12 - x)')

% 4. setting limits to focus on the domain (optional)
xlim([4 13])
ylim([0 5])



