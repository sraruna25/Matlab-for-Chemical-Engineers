% Define the data points (x, y)
x = [1, 2, 3];
y = [2, 3, 5];

% Number of data points
n = length(x);

% Create the divided difference table
% fdd is the divided difference table
fdd = zeros(n, n);
fdd(:, 1) = y';

% Calculate the divided differences
for j = 2:n
    for i = 1:n-j+1
        fdd(i, j) = (fdd(i+1, j-1) - fdd(i, j-1)) / (x(i+j-1) - x(i));
    end
end

% Display the divided difference table
disp('Divided Difference Table:');
disp(fdd);

% Construct the Newton Interpolating Polynomial
syms X;
P = fdd(1, 1);  % Start with the first term of the polynomial
product_term = 1;

% Build the polynomial term by term
for k = 2:n
    product_term = product_term * (X - x(k-1)); % (x - x_i) term
    P = P + fdd(1, k) * product_term; % Add the k-th term to the polynomial
end

% Display the Newton interpolating polynomial
disp('Newton Interpolating Polynomial:');
disp(P);

% To evaluate the polynomial at a certain point, for example, at X = 2.5:
result = double(subs(P, X, 2.5));
disp('Value of the polynomial at X = 2.5:');
disp(result);