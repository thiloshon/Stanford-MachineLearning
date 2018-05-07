function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % ============================================================
    
    
    % Formula is, theta(j) = theta(j) - alpha/m sigma[(h0(x) - y) x(j)]
    
    %     For simultanoeus update, store values before updating theta
    theta1 = theta(1);
    theta2 = theta(2);
    h0 = (X * theta - y);
    
    % theta(1) = theta1 - ((alpha / m) * sum((X * theta - y)' * X( :, 1)));
    % Since X( :, 1) is all zeros from intercept term, product is always 0. So we can omit it
    
    theta(1) = theta1 - ((alpha / m) * sum(h0));
    theta(2) = theta2 - ((alpha / m) * sum(h0' * X( :, 2)));
    
    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);
    
end

end

% ===================== POSSIBLE SOLUTION 02 =======================================

%     delta = (1/m)*sum(X.*repmat((X*theta - y), 1, size(X,2)));
%     theta = (theta' - (alpha * delta))';
