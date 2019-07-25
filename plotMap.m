function plotMap(x, y, t)
%PLOTMAP Plots the data point of y in a map using a specified title 
%   PLOTMAP(x, y) plots the data points of y in a map retrieved from long/lat
%   data points from x and sets a title.

figure;
lat = x(:, 1);
long = x(:, 2);

c = y;
scatter(long,lat,5,c,'filled')
colorbar
title(t)
xlabel('Latitude')
ylabel('Longitude')

% ============================================================

end
