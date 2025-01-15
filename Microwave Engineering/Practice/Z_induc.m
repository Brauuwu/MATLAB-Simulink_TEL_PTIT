function [] = Z_induc(L1, L2, L3)
f = 100e3:1e6:1e12;
w = 2*pi*f;
L1 = L1*1e-9;
L2 = L2*1e-9;
L3 = L3*1e-9;


ZL1 = 1./(1i*w*L1);
ZL2 = 1./(1i*w*L2);
ZL3 = 1./(1i*w*L3);


figure(1);
%loglog(f,abs(ZC1),'b', 'LineWidth', 2);
plot(f,abs(ZL1),'b', 'LineWidth', 2);
hold on;
%loglog(f,abs(ZC2),'r', 'LineWidth', 2);
plot(f,abs(ZL2),'r', 'LineWidth', 2);
hold on;
%loglog(f,abs(ZC3),'g', 'LineWidth', 2);
plot(f,abs(ZL3),'g', 'LineWidth', 2);
hold off

title('Capacitor Impedance');
xlabel('Frequency (Hz)');
ylabel('Z(Ohm)');
legend('L1', 'L2', 'L3');
axis([1e4 1e7 0 1e3]);

end