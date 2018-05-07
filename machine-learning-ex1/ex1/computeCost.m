function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;

% === === === === === === === = YOUR CODE HERE === === === === === === === =
% Instructions : Compute the cost of a particular choice of theta
%               You should set J to the cost.
% === === === === === === === === === === === === === === === === === === === === === === === === =


% Formula is, 1/2m sigma((h0(x) - y)^2)
% Using h0(x) = theta' x = theta0 + theta1 x,


% if h0(x) = theta0 + theta1 x,
%     J = (1 / (2 * m)) * sum( (theta( 1, 1) + (theta( 2, 1) * X( :, 2)) - y).^2 );

% if h0(x) = theta' x,
J = (1 / (2 * m)) * sum( ((X * theta) - y).^2 ); % Here theta is not transposed as to comply dot product rules.


end
