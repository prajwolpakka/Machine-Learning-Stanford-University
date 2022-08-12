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
  sum = 0;
  for i=1:m,
    h_theta = theta(1)+theta(2) * X(i,2);
    sum = sum + (h_theta - y(i))^2;
  endfor
  J = 1/(2*m) * sum;

  % h_theta = X * theta;
  % sum = sum((h_theta - y).^2);
  % J = 1/(2*m) * sum;


  % =========================================================================
end
