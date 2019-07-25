function plotPercentageError(x, theta, y)
%PLOTPERCENTAGEERROR Plots the percentage error into a new figure 
%   PLOTPERCENTAGEERROR(x, theta, y) calculates the percentage error
%   and plots the histogram into a new figure.

pred = x * theta;
error = y - pred;
percentageError = error./y;

figure;
histogram(percentageError);
xlabel('Percentage error');
ylabel('Count');
title('Histogram of percentage error');

% ============================================================

end
