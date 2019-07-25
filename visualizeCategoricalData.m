function visualizeCategoricalData(x, y, t)
%VISUALIZECATEGORICALDATA Plots the data points x and y into a new figure 
%   VISUALIZECATEGORICALDATA(x,y, t) plots the categorical data points of x 
%   in correlation to the data points of y in a new boxplot and adds a
%   title t.

figure;
boxplot(y, x)
ylabel('Price');
xlabel(t);
title(['Price per ' t]);

% ============================================================

end
