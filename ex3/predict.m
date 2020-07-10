function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% =========================================================================
%Vamos a hacer una actualización secuencial de la red neuronal.
%Vamos a calcular la primera capa de predición
f1 = [ones(m,1) X]
%Vasandonos en la función de la primera, vamos a calcular la segunda.
sp2 = f1*Theta1';
f2 = sigmoid(sp2);
t2 = [ones(size(f2,1), 1) f2]
%Ahora nos vamos a la segunda capa.
sp3 = t2*Theta2';
f3 = sigmoid(sp3);
%Aqui añadimos la predición final.
[lk,p] = max(f3,[],2);
end
