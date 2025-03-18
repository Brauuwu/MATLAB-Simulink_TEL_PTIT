% Exercise 17
y = 1 : 0.5 : 5;
yr = y;
l = 1;
r = length(yr);
while l<=r
    temp = yr(l);
    yr(l) = yr(r);
    yr(r) = temp;
    l=l+1;
    r=r-1;
end

z = y(mod(y, 1) == 0)