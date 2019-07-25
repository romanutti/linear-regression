function plotCosts(costs)
%PLOTCOSTS Plots the development of the costs into a new figure 
%   PLOTCOSTS(costs) Plots the whole history of the costs into a new figure.

figure;

plot(1:numel(costs), costs, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost');
title('Cost per iteration')

% ============================================================

end
