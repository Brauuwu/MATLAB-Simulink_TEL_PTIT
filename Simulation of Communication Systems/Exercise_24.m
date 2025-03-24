% Exercise 24
clear; clc;

% Init
a = 1;
r = 1;
h = 0.25;
t = 0:h:4;
N = length(t);
f = @(x,y) r-a*y;

% Initial Condition
x(1) = 0;
y(1) = 0;
% Euler Method
for i=2:N
    x(i) = x(i-1) + h;
    y(i) = y(i-1) + h*(f(x(i-1), y(i-1)));
end

% Exact test of ODE
y_exact = @(t) (r/a) * (1 - exp(-t));

% Error value;
t_check = [1 2];
idx = zeros(1, length(t_check));
yt = y_exact(t);
error = abs(yt - y);
for i=1:length(t_check)
    idx(i) = find(t == t_check(i));
    fprintf('Tại t=%d: Sai số là %.5f\n', i, error(idx(i)));
end

% Show Graph
plot(t, y_exact(t), 'ro-', 'LineWidth', 2)
hold on
plot(t, y, 'b*-')
legend('Exact', 'Euler', 'Location','southeast')
grid on
title('y(t) = (r/a) * (1 - exp(-t))')
xlabel('t')
ylabel('y(t)')