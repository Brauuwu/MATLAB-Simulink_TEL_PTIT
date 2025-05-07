% Hàm tìm số fibonacci thứ N
function xn = Fibo(n)
    x = zeros(1, n);
    x(1) = 1;
    x(2) = 1;
    for i = 3:n
        x(i) = x(i-1) + x(i-2);
    end
    xn = x(i);
end