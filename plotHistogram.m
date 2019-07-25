function plotHistogram(x, theta, y)
%PLOTHISTOGRAM Plots the histogram of residuals into a new figure 
%   PLOTHISTROGRAM(x, theta, y) calculates the residuals of input data x and
%   theta and plots the histogram into a new figure.

pred =  x * theta;      % pred refers to predicted prices using living area and theta
res = y - pred;         % res refers to residuals

figure; % open a new figure window

histogram(res);
ylabel('Frequency');
xlabel('Residual');
title('Histogram of residuals');

% ============================================================

end
