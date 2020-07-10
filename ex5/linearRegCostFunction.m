function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
% =========================================================================


%Para calcular el sumatorio, tenemos que hacer la transpuesta de una y la
%otra.
% Hay que tener en cuenta también como el primer parametro de theta es el
% añadido
J =  1/(2*m) * (X*theta - y)' * (X*theta - y) + (lambda / (2*m))*(theta(2:length(theta)))' * theta(2:length(theta));


%Ahora vamos a computar el vector gradiente
theta_ = theta;
theta_ (1) = 0;
grad = (1/m)* ((X*theta - y)' * X) + (lambda/m) * theta_';
grad = grad(:);
end
