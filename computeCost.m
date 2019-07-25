function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

h = X * theta; % compute hypothesis
delta = (h - y).^2; % calculate difference

t = ones(m, 1);
delta_sum = delta' * t; % sum all differences

J = (1/(2*m)) * delta_sum; % calculate costs

% =========================================================================
end
