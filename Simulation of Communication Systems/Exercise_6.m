% Exercise 6

A = [-1 3.5 2; 0 1 -1.3; 1.1 2 1.9]     % Define Matrix 3x3 A

B = [1 0 -1; -1.5 -1.5 -3; 1 1 1]       % Define Matrix 3x3 B

res_AND = and(A,B)      % Find AND = A & B
                        % a[i][j] = 0 || b[i][j] = 0 -> a[i][j]&b[i][j]=0

res_OR = or(A,B)        % Find OR = A | B
                        % a[i][j] = b[i][j] ~= 0 -> a[i][j]|b[i][j]=0