clear ; close all; clc


data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;


fprintf('\nRunning Gradient Descent ...\n')
% run gradient descent
J = computeCost(X, y, [0.128717 ; 0.699823]);
fprintf('%f\n', J);
J = computeCost(X, y, [-3.6303 ; 1.1664]);
fprintf('%f\n', J);
% print theta to screen