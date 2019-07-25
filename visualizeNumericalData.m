function visualizeNumericalData(x, y, p, t)
%VISUALIZENUMERICALDATA Plots a histogram for x and and the correlation for x
%and y
%   VISUALIZENUMERICALDATA(x,y) Plots a histogram for the data points in x on 
%   position p in the grid and the correlation for the data points x and y 
%   on position p + 1 in the grid. Adds a specified title t to the plot.

% Plot 4 subplots per figure for better readabilty
if p == 1
    figure;
end

nRows = 2;     % Number of rows in plot
nCols = 2;     % Number of columns in plot

% Histogram
subplot(nRows,nCols,p);
histogram(x);
ylabel('Frequency');
xlabel(t);
title(['Distribution of ' t]);
p = p+1;
hold on;
 
% Comparison price and featue t
subplot(nRows,nCols,p);
plot(x, y, 'rx');
ylabel('Price');
xlabel(t);
title(['Comparison of Price and ' t]);

% ============================================================

end
