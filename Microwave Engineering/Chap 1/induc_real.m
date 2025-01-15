function Z = induc_real()

a = 63.5*1e-6;
l = 1.27*1e-3;
r = 1.27*1e-3;
d=3.6*1e-4;
delta=64.516*1e6;
N = 3.5;

e=8.85*1e-12;
u=4*pi*1e-7;

f = 100e3:1e6:1e12;
w = 2*pi*f;
l_wire = 2*pi*r*N;

L = pi*(r^2)*u*(N^2)/l;
C = e*l_wire*2*a/d;
Rs = l_wire/(delta*pi*a^2);

ZL = 1i*w*L;
ZLS = ZL + Rs; 
ZC = 1./(1i*w*C);
Z = 1./(1./ZLS + 1./ZC);
Leq = imag(Z)./w;
figure(1);
loglog(f,abs(Z),'r', 'LineWidth', 2);
hold on;
loglog(f,abs(ZL),'b', 'LineWidth', 2);
hold on;
loglog(f,abs(Leq),'g', 'LineWidth', 2);
legend('abs(Z)','Ideal Z', 'real(Z)- L equal')
hold off


