function X_bin = oneHotEncode(X, num_labels)
%ONEHOTENCODE One-hot-encodes the features in X 
%   ONEHOTENCODE(X) returns a binarized version of X where
%   normalization is done according to 
%   https://ch.mathworks.com/help/deeplearning/ref/ind2vec.html

k = num_labels;
% Create X as k-dimensional matrix
e = eye(k);
X_bin = e(X,:);

% ============================================================

end
