function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = size(X,2);

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

for i=1:m,
	hx = sigmoid(X(i,:)*theta);
	yi = y(i,1);
	J = J + (-yi*log(hx)-(1-yi)*(log(1-hx)));
end;
J = J/m;

temp = 0;
for i=2:n,
	temp = temp + (theta(i,1)*theta(i,1));
end;
temp = temp * lambda;
temp = temp / (2*m);
	

J = J + temp;

for i=1:m,
	hx = sigmoid(X(i,:)*theta);
	yi = y(i,1);
	
	grad(1,1) = grad(1,1) + ((hx-yi)*X(i,1));
end;
grad(1,1) = grad(1,1)/m;

for j=2:n,
	for i=1:m,
		hx = sigmoid(X(i,:)*theta);
		yi = y(i,1);
		grad(j,1) = grad(j,1) + ((hx-yi)*X(i,j));
	end;
	grad(j,1) = grad(j,1) / m;
	grad(j,1) = grad(j,1) + ((lambda * theta(j,1))/m);
end;


% =============================================================

end
