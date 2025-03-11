%% Exercise 13

%% Init Vector w
w = 0.01 : 0.01 : 5;

%% Case 1
H1 = 1./(1j.*w);

subplot(2,4,1)
plot(w, abs(H1))
xlabel('ω')
ylabel('|H1(jω)|')
title('H1(jω)=1/(jω)')


subplot(2,4,2)
semilogx(abs(H1))
xlabel('semilogx')
ylabel('|H1(jω)|')
title('H1(jω)=1/(jω)')


subplot(2,4,3)
semilogy(abs(H1))
xlabel('semilogy')
ylabel('|H1(jω)|')
title('H1(jω)=1/(jω)')


subplot(2,4,4)
loglog(H1)
xlabel('loglog')
ylabel('|H1(jω)|')
title('H1(jω)=1/(jω)')

%% Case 2
H2 = 1./(1j.*w+1);

subplot(2,4,5)
plot(w, abs(H2))
xlabel('ω')
ylabel('|H2(jω)|')
title('H2(jω)=1/(jω+1)')


subplot(2,4,6)
semilogx(abs(H2))
xlabel('semilogx')
ylabel('|H2(jω)|')
title('H2(jω)=1/(jω+1)')


subplot(2,4,7)
semilogy(abs(H2))
xlabel('semilogy')
ylabel('|H2(jω)|')
title('H2(jω)=1/(jω+1)')


subplot(2,4,8)
loglog(H2)
xlabel('loglog')
ylabel('|H2(jω)|')
title('H2(jω)=1/(jω+1)')
