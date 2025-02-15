% Exercise 9

%% Init value of t and s(t)
t = 0 : 0.1 : 10;
s = sin(2*pi*5.*t).*sin(2*pi*3.*t)

%% Graph of s(t)
plot(t, s)