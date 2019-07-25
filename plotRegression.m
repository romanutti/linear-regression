function plotRegression(x, y, theta)
%PLOTREGRESSION Plots the data points x, y and regression into a new figure 
%   PLOTREGRESSION(x,y,theta) plots the data points of x and y and adds a
%   line for the linear regression.

figure; % open a new figure window

plot(x, y, 'rx', 'MarkerSize', 4);
ylabel('Price');
xlabel('Living area');

% Plot the linear fit
hold on; % keep previous plot visible
plot(x(:,2), x*theta, '-')
legend('Training data', 'Linear regression')
title('Regression for price based on living area')
hold off % don't overlay any more plots on this figure

% ============================================================

end
