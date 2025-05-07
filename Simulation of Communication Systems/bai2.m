% Bài 2
clear; clc; close all

% Khởi tạo tham số
MSV = [1 9 7];
A = [1 1 2];
phi = [0 pi/4 0];
f0 = MSV*10;
t = 0:0.1:10;

% Tín hiệu s(t)
s_t = 0;
for i = 1:3
    s_t = s_t + A(i)*cos(2*pi*t*f0(i) + phi(i));
end

% a) 
% Vẽ tín hiệu s(t) trên cửa sổ 2D
figure;
subplot(2,1,1);
plot(t, s_t);
title('Tín hiệu s(t) trên cửa sổ 2D');
xlabel('Thời gian (s)');
ylabel('s(t)');

% Vẽ phổ của tín hiệu s(t) trên cửa sổ 2D
S_f = fft(s_t);
f = linspace(-40, 40, length(S_f));
subplot(2,1,2);
plot(f, fftshift(abs(S_f)), 'r');
title('Phổ của tín hiệu s(t) trên cửa sổ 2D');
xlabel('Tần số (Hz)');
ylabel('|S(f)|');

% b)
% Vẽ tín hiệu s(t) trên cửa sổ 3D
figure;
subplot(2,1,1);
plot3(t, real(s_t), imag(s_t));
title('Tín hiệu s(t) trên cửa sổ 3D');
xlabel('Thời gian (s)');
ylabel('Phần thực');
zlabel('Phần ảo');

% Vẽ phổ của tín hiệu s(t) trên cửa sổ 3D
subplot(2,1,2);
plot3(f, real(S_f), imag(S_f));
title('Phổ của tín hiệu s(t) trên cửa sổ 3D');
xlabel('Tần số (Hz)');
ylabel('Phần thực');
zlabel('Phần ảo');

% c)
% Vẽ tín hiệu s(t) trên các cửa sổ con của từng giá trị i
figure;
for i = 1:3
    subplot(3,1,i)
    s_t_i = A(i)*cos(2*pi*f(i)*t + phi(i));
    plot(t, s_t_i);
    title(['Tín hiệu s(t) cho i = ', num2str(i)]);
    xlabel('Thời gian (t)');
    ylabel(['s(t) khi i = ', num2str(i)]);
end

%d)
% Vẽ phổ tín hiệu s(t) trên các cửa sổ con của từng giá trị i
figure;
for i = 1:3
    subplot(3,1,i)
    s_t_i = A(i)*cos(2*pi*f(i)*t + phi(i));
    S_f_i = fft(s_t_i);
    f_i = linspace(-f(i)/2, f(i)/2, length(S_f_i));
    plot(f_i, fftshift(abs(S_f_i)));
    title(['Phổ của s(t) cho i = ', num2str(i)]);
    xlabel('Tần số (Hz)');
    ylabel('|S(f)|');
end
