function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% Given Solution:
%   plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, ...
%       'MarkerSize', 7);
%   plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', ...
%       'MarkerSize', 7);

% =========================================================================

pos = find(y == 1);
neg = find(y == 0);

% Plot the data
plot(X(:, 1), X(:, 2), 'k+', 'MarkerSize', 5, 'MarkerIndices', pos); 
plot(X(:, 1), X(:, 2), 'ko', 'MarkerSize', 5, 'MarkerIndices', neg);




hold off;

end
