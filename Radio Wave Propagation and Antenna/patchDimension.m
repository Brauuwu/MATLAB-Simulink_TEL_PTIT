function [W,L, Eeff] = patchDimension(f, er, h)
% Tinh kich thuoc cac canh cua anten vi dai chu nhat
% f: GHz
% h: mm
f = f*1e9;
c = 3e8;
h = h*1e-3;

W = c/(2*f)*sqrt(2/(er+1));

% Hang so dien moi hieu dung
Eeff = (er + 1)/2 + (er - 1)/2*(1/(sqrt(1 + 12*h/W)));

% He so hieu chinh
DL =h*0.412*((Eeff+0.3)*(W/h+0.264))/(((Eeff-0.258)*(W/h+0.8)))
L = c/(2*f*sqrt(Eeff)) - 2*DL;


end