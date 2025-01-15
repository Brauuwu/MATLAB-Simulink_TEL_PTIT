function [Gamma, SWR, RL]=Coeff(Z)

z=Z/50;
Gamma =(z-1)/(z+1);
SWR=(1+abs(Gamma))/(1-abs(Gamma));
RL=-20*log10(abs(Gamma));

end