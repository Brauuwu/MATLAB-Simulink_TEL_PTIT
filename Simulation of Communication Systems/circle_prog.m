% Exercise 19 & 20
function [C, S] = circle_prog(r)
    C = 2*pi*r;
    S = pi*r*r;
    p = linspace(0,2*pi, 100);
    x = r*cos(p);
    y = r*sin(p);
    plot(x, y)
    title('Circle: r=3')
    xlabel('X-axis')
    ylabel('Y-axis')
    grid on
    axis equal
end