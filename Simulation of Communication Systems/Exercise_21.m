% Exercise 21
clear; clc;

% f(x) function
f = @(x) (x.^3)/3 + 4*x.^2 + x - 6;
x = -1:0.0001:3;
epsilon = 1e-6;

% Type Start point and End point
a = input('Nhập a: ');
b = input('Nhập b: ');
fa = f(a);
fb = f(b);

% Show Graph
figure
plot(x, f(x), 'b')
hold on
plot(a, fa, 'ro', 'MarkerSize', 3, 'LineWidth', 2)
plot(b, fb, 'ro', 'MarkerSize', 3, 'LineWidth', 2)
plot(x, 0*x, 'k', 'LineWidth', 1);
grid on

% Check Start Point and End Point sign
if fa * fb > 0
    disp('Vo nghiem')
    return

% Bisection Algorithm
else
    while b - a > epsilon*b
        mid = (a+b)/2;
        fmid = f(mid);
        if fmid == 0
            x = fmid;
            return
        elseif fmid*fa > 0
            a = mid;
            fa = fmid;
        else
            b = mid;
            fb = fmid;
        end
    end
    x = mid;
end

% Result
sprintf('Ket qua nghiem: %.5f', x)

% Show Graph
fx = f(x);
plot(x, fx, 'ro', 'MarkerSize', 3, 'LineWidth', 2)
