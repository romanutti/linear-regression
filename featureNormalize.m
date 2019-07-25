function X_norm = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   normalization is done according to 
%   https://en.wikipedia.org/wiki/Feature_scaling#Mean_normalization

X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

for col = 1:size(X,2)
    mu = mean(X(:,col));
    sigma = std(X(:,col));
    X_norm(:,col) = X_norm(:,col) - mu;
    X_norm(:,col) = X_norm(:,col) / sigma;
end

% ============================================================

end
