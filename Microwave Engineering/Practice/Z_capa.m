function [] = Z_capa(C1, C2, C3)
f = 100e3:1e6:1e12;
w = 2*pi*f;
C1 = C1*1e-12;
C2 = C2*1e-12;
C3 = C3*1e-12;
ZC1 = 1./(1i*w*C1);
ZC2 = 1./(1i*w*C2);
ZC3 = 1./(1i*w*C3);


figure(1);
%loglog(f,abs(ZC1),'b', 'LineWidth', 2);
plot(f,abs(ZC1),'b', 'LineWidth', 2);
hold on;
%loglog(f,abs(ZC2),'r', 'LineWidth', 2);
plot(f,abs(ZC2),'r', 'LineWidth', 2);
hold on;
%loglog(f,abs(ZC3),'g', 'LineWidth', 2);
plot(f,abs(ZC3),'g', 'LineWidth', 2);
hold off

title('Capacitor Impedance');
xlabel('Frequency (Hz)');
ylabel('Z(Ohm)');
legend('C1', 'C2', 'C3');
axis([1e5 1e8 0 1e5]);

end