function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
n = length(theta);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta



%Los sumatorios se pueden expresar de forma matricial haciendo X'*X (En
%caso de que sea un vector columna)
%Siempre que vayas a conseguir un numero, piensa como hacerlo.

% =============================================================
%Aqui nos encargamos de la función de coste:
sigmoide = sigmoid(X*theta);
J = ((1/m) * (-y' * log(sigmoide) - (1-y)' * log(1-sigmoide)) + (lambda/(2*m)) * (theta(2:n))' * theta(2:n));
%Vamos a hacer el vector gradiente.
%Que le den, otro día lo hacemos.
end
