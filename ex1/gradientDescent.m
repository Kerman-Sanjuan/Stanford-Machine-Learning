function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
n = size(theta,1); %Number of features.
S = 0;
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    %Por lo que tengo entendido, lo que tengo que actualizar son los
    %valores de theta.
    %La formula dice que theta(i+1) = thetha(i)-(alpha/m)*
    % J tiene los valores de uno y de dos.




    % ============================================================
    
    desfase = (X*theta) -y; %Calculamos la matriz columna de todos los errores.
    theta = theta- ((alpha/m)*(X'*desfase));
    
    
    
    
    
    
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    
   
end 
end
