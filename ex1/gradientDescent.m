function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
    %GRADIENTDESCENT Performs gradient descent to learn theta
    %   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by
    %   taking num_iters gradient steps with learning rate alpha

    % Initialize some useful values
    m = length(y); % number of training examples
    J_history = zeros(num_iters, 1);
    temp_J_theta_zero = 0;
    temp_J_theta_one = 0;

    for iter = 1:num_iters

        % ====================== YOUR CODE HERE ======================
        % Instructions: Perform a single gradient step on the parameter vector
        %               theta.
        %
        % Hint: While debugging, it can be useful to print out the values
        %       of the cost function (computeCost) and gradient here.
        %
        temp_theta_zero = theta(1) - alpha * (1/m) * ((X * theta) - y)' * X(:, 1);
        temp_theta_one = theta(2) - alpha * (1/m) * ((X * theta) - y)' * X(:, 2);
        % ============================================================
        theta(1) = temp_theta_zero;
        theta(2) = temp_theta_one;
        % Save the cost J in every iteration
        J_history(iter) = computeCost(X, y, theta);
        fprintf('iter: %d, t(0): %.2f t(1): %.2f cost: %.2f\n', iter, theta(1), theta(2), J_history(iter));
    end

end
