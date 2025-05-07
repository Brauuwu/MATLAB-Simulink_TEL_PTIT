% Bài 1
clear; clc; close all

% Khởi tạo tham số
a = 7;
b = 9;
c = b+a+2;
N = a*b+2;

% a)
disp('a)')
A = [a -b -c; c 2*b -a; a c -3*c];
B = [10; 5; 2];
disp('A=')
disp(A)
disp('B=')
disp(B)

% b)
disp('b)')
A_extend = zeros(b+4, b+4);
for i = 1:b+4
    for j = 1:b+4
        if i==b+4 && j==b+4
            A_extend(i, j) = 10;
        else
            A_extend(i, j) = a;
        end
    end
end
A_extend(1:length(A), 1:length(A)) = A;
disp('A_extend=')
disp(A_extend)

% c)
disp('c)')
disp('C=')
C = randi([0, 1], 5, 10);
disp(C)

% d)
disp('d)')
disp(['Số Fibonacci thứ ', num2str(N), ': '])
disp(Fibo(N))