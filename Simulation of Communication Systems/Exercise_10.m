% Exercise 10

%% Init value of t and s(t)
t = 0 : 0.1 : 10;
s = 20*sin(2*pi*5.*t)

%% Graph of s(t)
plot(t, round(s))