clear; clc;

% Init
C = 4.7e-6;
R = 10e3;
h = 3e-3;
t = 0:h:4;
N = length(t);
f1 = @(u) (-1/(R*C))*u + 1/(R*C);

% Initial Condition
u = zeros(1, N); % Preallocate for efficiency

% RK 4
for i = 2:N
    k1 = h * f1(u(i-1));
    k2 = h * f1(u(i-1) + k1/2);
    k3 = h * f1(u(i-1) + k2/2);
    k4 = h * f1(u(i-1) + k3);
    u(i) = u(i-1) + (1/6) * (k1 + 2*k2 + 2*k3 + k4);
end

% ODE45
u0 = 0;
tspan = [0 4];
[t_ode45, u_ode45] = ode45(@(t, u) (-1/(R*C))*u + 1/(R*C), tspan, u0);

% Show Graph
figure;
subplot(2,1,1);
plot(t, u, 'r', 'LineWidth', 2);
xlabel('t');
ylabel('u(t)');
title('RK4');
hold on;
subplot(2,1,2);
plot(t_ode45, u_ode45, 'b', 'LineWidth', 2);
grid on;
xlabel('t');
ylabel('u(t)');
title('ODE45');
