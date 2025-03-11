% Exercise 15
x = (-2 : 0.2 : 2);
y = (-1 : 0.1 : 1)';
v = ones(length(x), 1);
X = v*x;
Y = y*v';
[X, Y] = meshgrid(x, y)
f = X.^2 + Y.^2;
mesh(x, y, f)
xlabel('x')
ylabel('y')
title('f=x^2+y^2')