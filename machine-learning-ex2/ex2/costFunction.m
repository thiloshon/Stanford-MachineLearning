function[J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% === === === === === === === = YOUR CODE HERE === === === === === === === =
% Instructions : Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note : grad should have the same dimensions as theta
%

% Formula for cost function is,
%       J(theta) = 1 / m SIGMA[-y log(h0(x)) - (1 - y)log(1 - h0(x))]
% Formula for gradients is,
%       PartialDerivate[J(theta)] = 1 / m SIGMA[(h0(x) - y)x(j)]

h0 = sigmoid(X * theta);

% J = (1 / m) * sum(log(h0') * (-y) - log(1 - h0') * (1 - y));
% Since value for sum is already single value sum is redundant
J = (1 / m) * (log(h0') * (-y) - log(1 - h0') * (1 - y));
grad = (1 / m) * X' * (h0 - y);




% === === === === === === === === === === === === === === === === === === === === =

end
