function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).





% =============================================================
    [m,n] = size(g);
    for i = 1:m
        for i2 = 1:n
            if(z(i,i2) == 0)
                g(i,i2) = 0.5;
            else
            g(i,i2) = 1/(1+exp(1)^(-z(i,i2)));
            end
        end
    end 
end
