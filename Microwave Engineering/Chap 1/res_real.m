function Z = res_real()

a = 2.032*1e-4;
l = 2.5*1e-2;
u=4*pi*1e-7;
d=64.516*1e6;
%L = 2*l/(4*pi*a);

f = 100e3:1e6:1e12;
w = 2*pi*f;
L = 1.54./sqrt(f)*1e-6;
C = 5e-12;
R = 500;
Z = 1i*w.*L+ 1./(1i*w*C +1/R);

R_ideal = [];
for i = 1 : length(f)
R_ideal(i) = 500; 
end

%l = length(L)
%length (Z)

figure(1);
loglog(f,abs(Z),'r','LineWidth', 2);
axis([0 1e12 0 1000]);
hold on;
loglog(f,R_ideal,'b','LineWidth', 2);
hold on;
loglog(f,real(Z),'g','LineWidth', 2);
legend('abs(Z)','Ideal Z', 'real(Z)- R equal')
hold off;




