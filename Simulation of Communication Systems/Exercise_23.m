% Exercise 23
clear; clc;

epsilon = 0.0001;
xn = 2;
xnext = @(x) (x^2 + 2) / (2*x); 
while abs(xnext(xn) - xn) > epsilon
    xn = xnext(xn);
end
fprintf('Sqrt of 2: %.5f\n', xn)
