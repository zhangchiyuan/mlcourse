function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X
mu = zeros(1, size(X, 2))
sigma = zeros(1, size(X, 2))

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
size(X_norm,2)
for i = 1:size(X_norm,2)
  mu(:,i) = mean(X_norm(:,i));
  sigma(:,i) = std(X_norm(:,i));
  X_norm(:,i) = (X_norm(:,i) - mu(:,i)) / sigma(:,i);

end;

##size = X(:,1);
##bed = X(:,2);
##mu = [mean(size),mean(bed)];
##
####size_dev = std(size)
####bed_dev = std(bed)
##sigma = [std(size), std(bed)];
##size_n = (size - mean(size))/std(size);
##bed_n = (bed - mean(bed))/std(bed);
##X_norm = [size_n, bed_n];

##for i = 1:size(X, 2)
##	mu(:,i) = mean(X(:,i));
##	sigma(:,i) = std(X(:,i));
##	X_norm(:,i) = (X(:,i) - mu(:,i)) / sigma(:,i);
##end




% ============================================================

end
