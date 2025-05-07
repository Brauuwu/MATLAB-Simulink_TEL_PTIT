% Bài 4
clear; clc; close all

% Khởi tạo tham số
a = 7;
b = 9;
c = b+a+2;

% Định nghĩa hàm f(x,y)
f = @(x,y) 2*a*(x^2)+x-6*b*y;

% Điều kiện ban đầu
y_0 = 1;

% Bước nhảy
h = 0.1;

% a) Giải phương trình vi phân theo hương pháp Euler
x = 0:0.1:10;
y = zeros(length(x));
y(1) = y_0;
for i = 2:length(x)
    y(i) = y(i-1) + h*f(x(i-1), y(i-1));
end

% b) Vẽ và phân tích nghiệm
y_cal = (1 - 1/(36*b^2))*exp(-6*b.*x) + (a/(3*b))*x.^2 + (1/(6*b)).*x + 1/(36*b^2);
plot(x, y, 'b', x, y_cal, '--r')
legend('Euler Method', 'Caculus')
grid on