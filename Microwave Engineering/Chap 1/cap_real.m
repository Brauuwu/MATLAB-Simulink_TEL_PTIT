function Z = cap_real()
a = 2.032*1e-4;
l = 1.25*1e-2;
u=4*pi*1e-7;
d=64.516*1e6;
tand = 1e-4;


f = 100e3:1e6:1e12;
w = 2*pi*f;
C = 47e-12;

R = l/a*sqrt(u/(pi*d));
Rs = R*sqrt(f);
%Rs = 4.8*sqrt(f)*1e-6;

R = tand/(2*pi*C);
%Re = R./f;
Re = 33.9./f*1e12;

L = 2*l/(4*pi*a)*sqrt(u/(pi*d));
Ls = L./sqrt(f);

ZL = 1i*w.*Ls;
ZC = 1./(1i*w*C);
Zp =1./(1i*w*C +1./Re);

Z = ZL + Rs + Zp;
Ceq = 1./(imag(Z).*w);

figure(1);
loglog(f,abs(Z),'r', 'LineWidth', 2);
hold on;
loglog(f,abs(ZC),'b', 'LineWidth', 2);
hold on;
loglog(f,abs(Ceq),'g', 'LineWidth', 2);
legend('abs(Z)','Ideal Z', 'real(Z)- C equal')
hold off



%axis([1e8 1e12 0 1e2]);

end
