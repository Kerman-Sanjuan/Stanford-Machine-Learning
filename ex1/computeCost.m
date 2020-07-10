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
%Sabemos que la formula es J(0) = 1/2m
%X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
%theta = zeros(2, 1); % initialize fitting parameters
%iterations = 1500;
%alpha = 0.01;
%Te metemos una matriz de tetas para ir probando.

%Esta solución es valida:aux = aux + (theta(1,1)*X(i,1)+theta(2,1)*X(i,2)- y(i))^2;   
%Pero esta hecho de forma medio manual, ya que sabemos que solo hay dos
%caractericias, vamos a ponerlo de forma que es independiente al número de
%elementos que tiene nuestra hipotesis.
%Con la nueva forma, el programa funciona a la perfección,
%independientemente del tamañ
% =========================================================================
t = 2*m;
aux = 0;
for i = 1:m
   aux = aux+(sum(X(i,:)*theta)-y(i))^2;
end

J = aux/t;
end