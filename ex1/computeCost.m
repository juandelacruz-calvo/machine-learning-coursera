function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

for iter = 1:m
    % fprintf('X(iter) = %f\n', X(iter,2));
    h = theta(1) + (theta(2) * X(iter,2));
    difference = h - y(iter);
    temp_J = difference * difference;
    J += temp_J;
    % fprintf('h: %.2f, y: %.2f difference: %.2f tempJ: %.2f J: %.2f\n', h, y(iter), difference, temp_J, J);
end 

J = J / (2*m);
% fprintf('J = %f\n', J);
% =========================================================================

end
