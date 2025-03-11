% Exercise 14

%% Init Vector w
w = 0.01 : 0.01 : 5;

%% Case 1
H1 = 1./(1j.*w);

subplot(2,2,1)
plot(w, abs(H1))
xlabel('ω')
ylabel('|H1(jω)|')
title('H1(jω)=1/(jω)')

subplot(2,2,2)
plot(w, angle(H1))
xlabel('ω')
ylabel('arg[H1(jω)]')
title('H1(jω)=1/(jω)')

%% Case 2
H2 = 1./(1j.*w+1);

subplot(2,2,3)
plot(w, abs(H2))
xlabel('ω')
ylabel('|H2(jω)|')
title('H2(jω)=1/(jω+1)')

subplot(2,2,4)
plot(w, angle(H2))
xlabel('ω')
ylabel('arg[H2(jω)]')
title('H2(jω)=1/(jω+1)')