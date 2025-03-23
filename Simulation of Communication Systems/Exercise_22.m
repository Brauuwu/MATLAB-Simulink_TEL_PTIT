% Exercise 22
clear; clc;

% Init
a = -1.5;
b = 1.5;
N = 100;
x = linspace(a, b, N+1);
f = @(x) 4*x.^3 .* 2.*exp(x) .* cos(x);

% Calculate Integral
dx = (b-a)/N;
I = 0;
for i=1:N
    xi = a + (i-1/2)*dx;
    I = I + f(xi);
end
I = I*dx;
sprintf('Tich phan: I = %.5f', I)
% Show Graph
figure
plot(x, f(x), 'r-', 'LineWidth', 2);
hold on
plot(x, x.*0, 'k', 'LineWidth', 1)
grid on
