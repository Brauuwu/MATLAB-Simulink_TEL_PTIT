% Bài 3
clear; clc; close all

% Khởi tạo tham số
a = 7;
b = 9;
c = b+a+2;

% Kiểm tra điều kiện có nghiệm
A = [a -b -c; c 2*b -a; a c -3*c];
B = [10; 5; 2];

if det(A) == 0
    disp('Hệ phương trình vô nghiệm hoặc vô số nghiệm')
else
    x = A\B;
    disp('Nghiệm của hệ phương trình: ')
    for i = 1:3
        disp(['x', num2str(i), ' = ', num2str(x(i))])
    end
end