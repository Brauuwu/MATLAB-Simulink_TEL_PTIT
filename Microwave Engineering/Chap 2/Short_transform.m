function [d,half_lamda] = Short_transform(mode,C,vp,f)
%calculate open stub length to have capa or induc effect
%mode: 1 - Capa, input C desire
%      2 - Induc, input L desire
%vp: propotion of phase velocity over light speed

Z0=50;
c=3e8;
lamda = vp*c/f;
beta=2*pi/lamda;

if mode == 1
    d = (1/beta)*(pi-atan(1/(2*pi*f*C*Z0)));
else
    L=C;
    d = (1/beta)*(atan((2*pi*f*L)/Z0));
end

half_lamda = lamda/2;