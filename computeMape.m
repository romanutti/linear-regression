function mape = computeMape(x, theta, y)
%COMPUTEMAPE Computes the mean absolute percentage error (MAPE) 
%   COMPUTEMAPE(x, theta, y) Computes the mean absolute percentage error
%   from given dataset x, theta and effective result y

pred = x * theta;
error = y - pred;
absError = abs(error./y);

mape = mean(absError);

% ============================================================

end
