function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

%Tengo que devolver dos cosas, por un lado, el vector gradiente y por otro
%lado tengo que devolver la función de coste
%for i = 1:m
 %  aux = aux+(sum(X(i,:)*theta)-y(i))^2;
%end

%J = aux/t;
% =============================================================

%Aqui nos encargamos de la función de coste:
acm = 0;
sigmoide = sigmoid(X*theta);
for i = 1:m
    acm = acm+(-y(i)*log(sigmoide(i)))-(1-y(i))*log(1-sigmoide(i));
end
J = acm/m;
%Aqui nos encargamos del vector gradiente
hipotesis = sigmoid(X*theta);
desfase = (hipotesis-y);
grad = (1/m)*(X'*desfase);
end
