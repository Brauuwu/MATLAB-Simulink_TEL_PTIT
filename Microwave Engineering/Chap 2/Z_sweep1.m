function Z_sweep1()

smithchart;
hold on;
Z0 = 50;
ZL = 30 + 1j*60;
vp = 0.5 * 3e8;
f = 2e9;
d = 0:0.001:0.03;

beta = 2*pi*f/vp;
Gamma = (ZL-Z0)/(ZL + Z0);
rd = abs(Gamma);

alpha = angle(Gamma) - 2*beta*d;
plot(rd*cos(alpha),rd*sin(alpha),'r', 'linewidth', 2);

end