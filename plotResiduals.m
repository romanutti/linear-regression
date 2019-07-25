function [mu, sigma] = plotResiduals(x, theta, y)
%PLOTRESIDUALS Plots the residuals of prediction x * theta and y into a new figure 
%   PLOTRESIDUALS(x, theta, y) calculates the residuals of input data x and
%   theta and plots the delta points into a new figure.

pred =  x * theta;      % pred refers to predicted prices using living area and theta
res = y - pred;         % res refers to residuals

figure; % open a new figure window

plot(pred, res, 'rx', 'MarkerSize', 4);
yline(0);
ylabel('Residuals');
xlabel('Predicted values');
title('Tukey-Anscombe-Plot');

mu = mean(res);
sigma = std(res);

% ============================================================

end
