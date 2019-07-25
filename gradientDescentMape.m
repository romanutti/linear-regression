function [theta, J_history] = gradientDescentMape(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMAPE Performs gradient descent using MAPE to learn theta
%   theta = GRADIENTDESCENTMAPE(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps using MAPE with learning rate alpha.

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
   
    % Calculate error
    pred = X * theta;
    error = y - pred;
    percentageError = error./y;

    % Set derivation
    mapeDerivation = percentageError;
    mapeDerivation(percentageError>.0)= -1;
    mapeDerivation(percentageError<.0)= 1;
   
    % Calculate theta
    cost = mapeDerivation' * X;
    theta = theta - alpha/(m) * cost';
   
    % Save the cost J in every iteration    
    J_history(iter) = computeMape(X, theta, y);
    
end

% ============================================================

end
