% Exercise 2
M = [1 0 0; 0 1j 1; 1j 1j+1 -3]     % Define Matrix 3x3 M

V = [M M; M M]      % Define Matrix 6x6 V

V(2,:) = [];        % Delete 2nd Row
V(:,3) = []         % Delete 3rd Column

z = V(4,:)          % Define Row vector z

V(4,2) = 1j+5       % Let V[4][2] = j+5