% Exercise 16
r = 3;
syms p t
x = r*cos(p)*sin(t);
y = r*sin(p)*sin(t);
z = r*cos(t);
fsurf(x, y, z)
axis equal
title('Sphere R=3')
