function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

h_theta = sigmoid(X*theta);

J = ( -y'*log(h_theta) - (1-y)'*log(1-h_theta))/m  + lambda/2/m * theta(2:end)'*theta(2:end);
grad = ((h_theta - y)'*X)/m  +[0 lambda/m.*theta(2:end)'];
grad = grad(:);

end
